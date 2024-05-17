variable "assign_ipv6_address_on_creation" {
  type        = bool
  default     = false
}
variable "vpc_id" {
  type        = string
}
variable "availability_zones" {
  type        = list(string)
}
variable "subnet_cidr_blocks" {
  type        = list(string)
}
variable "enable_resource_name_dns_aaaa_record_on_launch" {
  type        = bool
  default     = false
}
variable "enable_resource_name_dns_a_record_on_launch" {
  type        = bool
  default     = false
}
variable "ipv6_cidr_block" {
  type        = string
}
variable "ipv6_native" {
  type        = bool
  default     = false
}
variable "availability_zone_id" {
  type        = string
}
variable "customer_owned_ipv4_pool" {
  type        = string
}
variable "enable_dns64" {
  type        = bool
  default     = false
}
variable "enable_lni_at_device_index" {
  type        = bool
  default     = false
}