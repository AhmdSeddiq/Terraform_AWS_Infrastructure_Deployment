resource "aws_route53_cidr_collection" "example" {
  name = var.Route-Cidr-CollName
}

resource "aws_route53_cidr_location" "example" {
  cidr_collection_id = aws_route53_cidr_collection.example.id
  name               = var.Route-Cidr-Loca-Name
  cidr_blocks        = var.RO-Cidr-B
}

resource "aws_route53_delegation_set" "main" {
  reference_name = var.RO-DEL-Set-Ref-Name
}

resource "aws_route53_zone" "primary" {
  name              = var.RO-Zone-Name
  delegation_set_id = aws_route53_delegation_set.main.id
}

resource "aws_route53_key_signing_key" "example" {
  hosted_zone_id             = aws_route53_zone.primary.zone_id
  key_management_service_arn = aws_kms_key.example.arn
  name                       = var.RO_key_signing_key_name
}

resource "aws_route53_hosted_zone_dnssec" "example" {
  depends_on     = [aws_route53_key_signing_key.example]
  hosted_zone_id = aws_route53_key_signing_key.example.hosted_zone_id
}

resource "aws_route53_traffic_policy" "example" {
  name     = var.RO_traffic_policy_name
  comment  = var.RO_traffic_policy_comment
  document = <<EOF
{
  "AWSPolicyFormatVersion": "2015-10-01",
  "RecordType": "A",
  "Endpoints": {
    "endpoint-start-NkPh": {
      "Type": "value",
      "Value": "10.0.0.2"
    }
  },
  "StartEndpoint": "endpoint-start-NkPh"
}
EOF
}

resource "aws_route53_traffic_policy_instance" "test" {
  name                   = var.RO-TRAF-Pol-Inst-name
  traffic_policy_id      = var.RO-TRAF-pol-Inst-Traf-id
  traffic_policy_version = var.RO-TRAF-Pol-Inst-Traf-version
  hosted_zone_id         = var.RO-TRAF-Pol-Inst-Hosted-zone-id
  ttl                    = var.RO-TRAF-pol-Inst-ttl
}

resource "aws_route53_vpc_association_authorization" "example" {
  vpc_id  = aws_vpc.alternate.id
  zone_id = aws_route53_zone.example.id
}

