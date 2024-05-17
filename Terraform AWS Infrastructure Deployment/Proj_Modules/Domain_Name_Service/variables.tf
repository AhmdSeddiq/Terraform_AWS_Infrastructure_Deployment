variable "Route-Cidr-Loca-Name" {
  type    = string
  default = "office"
}
variable "RO-Cidr-B" {
  type    = list(string)
  default = ["200.5.3.0/24", "200.6.3.0/24"]
}
variable "RO-DEL-Set-Ref-Name" {
  type    = string
  default = "DynDNS"
}
variable "Route-Cidr-CollName" {
  type    = string
  default = "collection-1"
}
variable "RO-Zone-Name" {
  type    = string
  default = "hashicorp.com"
}
variable "RO-TRAF-Pol-Inst-Traf-version" {
  type    = number
  default = 1
}
variable "RO-TRAF-Pol-Inst-Hosted-zone-id" {
  type    = string
  default = "Z033120931TAQO548OGJC"
}
variable "RO-TRAF-pol-Inst-ttl" {
  type    = number
  default = 360
}
variable "RO_key_signing_key_name" {
  type    = string
  default = "example"
}
variable "RO_traffic_policy_name" {
  type    = string
  default = "example"
}
variable "RO_traffic_policy_comment" {
  type    = string
  default = "example comment"
}
variable "RO-TRAF-Pol-Inst-name" {
  type    = string
  default = "test.example.com"
}
variable "RO-TRAF-pol-Inst-Traf-id" {
  type    = string
  default = "b3gb108f-ea6f-45a5-baab-9d112d8b4037"
}
