variable "PRIV-SUB-id" {
  type        = string
}
variable "PUB-Sub-id" {
  type        = string
}
variable "PUB-elastic-ip-Allo-id" {
  type        = string
}
variable "PRIV-NAT-GET-Conn-type" {
  type        = string
  default     = "vpc"
}
variable "PUB-NAT-GET-private-ip" {
  type        = string
}
variable "PRIV-Elastic-ip-Allo-id" {
  type        = string
}
variable "PUB-NAT-GET-Conn-type" {
  type        = string
  default     = "internet"
}

