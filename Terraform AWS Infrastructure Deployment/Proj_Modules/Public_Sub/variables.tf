variable "vpc_id" {
  type        = string
}
variable "availability_zones" {
  type        = list(string)
}
variable "subnet_cidr_blocks" {
  type        = list(string)
}
variable "assign_ipv6_address_on_creation" {
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
variable "map_customer_owned_ip_on_launch" {
  type        = bool
  default     = false
}
variable "map_public_ip_on_launch" {
  type        = bool
  default     = false
}
variable "outpost_arn" {
  type        = string
}
variable "private_dns_hostname_type_on_launch" {
  type        = string
  default     = "IpHostname" 
}
variable "internet_gateway_id" {
  type        = string
}
variable "public_route_cidr_block" {
  type        = string
  default     = "0.0.0.0/0"
}