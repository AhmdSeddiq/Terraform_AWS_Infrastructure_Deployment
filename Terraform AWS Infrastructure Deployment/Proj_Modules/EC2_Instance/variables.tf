variable "KEY" {
  type        = string
}
variable "SECURITY-GRO-ids" {
  type        = list(string)
}
variable "USERDATA" {
  type        = string
  default     = ""
}
variable "Sub-ID" {
  type        = string
}
variable "AMI-ID" {
  type        = string
}
variable "INS-TYPE" {
  type        = string
  default     = "t2.micro"
}
