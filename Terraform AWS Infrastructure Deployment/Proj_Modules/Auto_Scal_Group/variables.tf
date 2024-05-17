#VARS
variable "LAUN-CONFIG-name" {
  type        = string
}
variable "Health-Check-Type" {
  type        = string
  default     = "EC2"
}
variable "Health-Check-Gr-PERI" {
  type        = number
  default     = 300
}
variable "VPC-Zone-ID" {
  type        = list(string)
}
variable "MIN-SIZE" {
  type        = number
  default     = 1
}
variable "MAX-SIZE" {
  type        = number
  default     = 3
}
variable "Desired-CAP" {
  type        = number
  default     = 2
}

