/*-----VARS SEC ASSO SATRT-----*/
variable "VPC-EndPoint-id" {
}
variable "SEC-GROP-id" {
}
variable "Replace-DEFU-ASSO" {
  type        = bool
  default     = false
}
/*-----VARS SEC RULE END-----*/


/*-----VARS SEC RULE SATRT-----*/
variable "SEC-GROP-rule_cidr_blocks" {
  type        = list(string)
  default     = []
}
variable "SEC-GROP-rule_ipv6_cidr_blocks" {
  type        = list(string)
  default     = []
}
variable "SEC-GROP-rule_security_group_id" {
}
variable "SEC-GROP-rule_description" {
}
variable "SEC-GROP-rule_prefix_list_ids" {
  type        = list(string)
  default     = []
}
variable "SEC-GROP-rule_type" {
  default     = "ingress"
}
variable "SEC-GROP-rule_from_portrule_from_port" {
  default     = 0
}
variable "SEC-GROP-rule_to_port" {
  default     = 65535
}
variable "SEC-GROP-rule_protocol" {
  default     = "tcp"
}
/*-----VARS SEC RULE SATRT-----*/


/*-----VARS SEC GROP SATRT-----*/
variable "security_group_description" {
}
variable "egress_rules" {
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = list(string)
    description      = string
    ipv6_cidr_blocks = list(string)
    prefix_list_ids  = list(string)
    security_groups  = list(string)
    self             = bool
  }))
}
variable "ingress_rules" {
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = list(string)
    description      = string
    ipv6_cidr_blocks = list(string)
    prefix_list_ids  = list(string)
    security_groups  = list(string)
    self             = bool
  }))
}
variable "security_group_name_prefix" {
}
variable "security_group_name" {
}
variable "revoke_rules_on_delete" {
}
variable "tags" {
  type        = map(string)
}
variable "vpc_id" {
}
/*-----VARS SEC GROP END-----*/


