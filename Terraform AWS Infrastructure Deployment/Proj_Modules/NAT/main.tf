resource "aws_nat_gateway" "public_nat_gateway" {
  allocation_id                      = var.PUB-elastic-ip-Allo-id
  subnet_id                          = var.PUB-Sub-id
  connectivity_type                  = var.PUB-NAT-GET-Conn-type
  private_ip                         = var.PUB-NAT-GET-private-ip
}

resource "aws_nat_gateway" "private_nat_gateway" {
  allocation_id                      = var.PRIV-Elastic-ip-Allo-id
  subnet_id                          = var.PRIV-SUB-id
  connectivity_type                  = var.PRIV-NAT-GET-Conn-type
}
