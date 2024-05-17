resource "aws_security_group" "example_security_group" {
  description            = var.security_group_description
  egress                 = var.egress_rules
  ingress                = var.ingress_rules
  name_prefix            = var.security_group_name_prefix
  name                   = var.security_group_name
  revoke_rules_on_delete = var.revoke_rules_on_delete
  tags                   = var.tags
  vpc_id                 = var.vpc_id
}

#SEC-GROP-RUL
resource "aws_security_group_rule" "example" {
  type                     = var.SEC-GROP-rule_type
  from_port                = var.SEC-GROP-rule_from_portrule_from_port
  to_port                  = var.SEC-GROP-rule_to_port
  protocol                 = var.SEC-GROP-rule_protocol
  cidr_blocks              = var.SEC-GROP-rule_cidr_blocks
  ipv6_cidr_blocks         = var.SEC-GROP-rule_ipv6_cidr_blocks
  security_group_id        = var.SEC-GROP-rule_security_group_id
  description              = var.SEC-GROP-rule_description
  prefix_list_ids          = var.SEC-GROP-rule_prefix_list_ids
  
}

#SEC-GROP-ASSO
resource "aws_vpc_endpoint_security_group_association" "sg_ec2" {
  vpc_endpoint_id             = var.VPC-EndPoint-id
  security_group_id           = var.SEC-GROP-id
  replace_default_association = var.Replace-DEFU-ASSO
}

