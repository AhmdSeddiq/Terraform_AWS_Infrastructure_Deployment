variable "VPCname" {
  type        = string
}
variable "Cidrblock" {
  type        = string
}
variable "enable_dns_support" {
  type        = bool
  default     = true
}
variable "enable_dns_hostnames" {
  type        = bool
  default     = true
}
variable "instance_tenancy" {
  type        = string
  default     = "default" 
}
variable "ipv4_ipam_pool_id" {
  type        = string
}
variable "ipv4_netmask_length" {
  type        = number
}
variable "ipv6_cidr_block" {
  type        = string
}
variable "ipv6_ipam_pool_id" {
  type        = string
}
variable "ipv6_netmask_length" {
  type        = number
}
