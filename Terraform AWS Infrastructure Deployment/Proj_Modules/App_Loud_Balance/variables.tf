/*-------------TARGET GROUP VARS START-------------*/
variable "OURVPC_id" {
  type = string
}
variable "OUR_Protocol" {
  type    = string
  default = "TCP"
}
variable "ConnecTermination" {
  type    = bool
  default = true
}
variable "DeregisDelay" {
  type    = number
  default = 300
}
variable "LambdaMUL_VAL-Headers_en" {
  type    = bool
  default = false
}
variable "LoadBala-algo" {
  type    = string
  default = "round_robin"
}
/*-------------TARGET GROUP VARS END-------------*/


/*-------------TARGET GROUP VARS SATRT------------ */
variable "availazone" {
}
variable "tarid" {
}
/*-------------TARGET GROUP VARS END------------ */


/*-------------ALB VARS Start-------------*/
variable "desync_mitigation_mode" {
  type        = string
  default     = "defensive"
}
variable "dns_record_client_routing_policy" {
  type        = string
  default     = "any_availability_zone"
}
variable "drop_invalid_header_fields" {
  type        = bool
  default     = false
}
variable "enable_cross_zone_load_balancing" {
  type        = bool
  default     = false
}
variable "enable_http2" {
  type        = bool
  default     = true
}
variable "load_balancer_type" {
  type        = string
  default     = "application"
}
variable "security_groups" {
  type        = list(string)
}
variable "subnets" {
  type        = list(string)
}
variable "enable_deletion_protection" {
  type        = bool
  default     = false
}
variable "access_logs_bucket" {
  type        = string
}
variable "access_logs_enabled" {
  type        = bool
  default     = false
}
variable "The_Name" {
  type        = string
}
variable "Prefix_Name" {
  type        = string
}
variable "internal_VAR" {
  type        = bool
  default     = false
}
variable "access_logs_prefix" {
  type        = string
}
variable "connection_logs_bucket" {
  type        = string
}
variable "connection_logs_enabled" {
  type        = bool
  default     = false
}
variable "connection_logs_prefix" {
  type        = string
}
variable "subnet_mapping_subnet_id" {
  type        = string
}
variable "subnet_mapping_allocation_id" {
  type        = string
  default     = null
}
variable "subnet_mapping_ipv6_address" {
  type        = string
  default     = null
}
variable "subnet_mapping_private_ipv4_address" {
  type        = string
  default     = null
}
variable "client_keep_alive" {
  type        = number
  default     = 3600
}
variable "customer_owned_ipv4_pool" {
  type        = string
  default     = null
}
/*-------------ALB VARS END-------------*/


/*-------------ALB LISTENER VARS START-------------*/
variable "AWS-Lb-Lis-Protocol" {
}
variable "AWS-Lb-Lis-Port"{
}
variable "AWS-Lb-Lis-Certificate-arn" {
}
variable "AWS-Lb-Listener-ssl-pol" {
}
variable "AWS-Lb-Lis-default-acttargetgroup-arn" {
}
/*-------------ALB LISTENER VARS END-------------*/


/*-------------LISTENER RULE VARS START-------------*/
variable "aws_lb_listener_rule_variable_action_redirect_status_code" {
}
variable "aws_lb_listener_rule_variable_action_authenticate_oidc_issuer" {
}
variable "aws_lb_listener_rule_variable_action_authenticate_oidc_token_endpoint" {
}
variable "aws_lb_listener_rule_variable_action_authenticate_oidc_user_info_endpoint" {
}
variable "aws_lb_listener_rule_variable_condition_host_header_values" {
  type        = list(string)
}
variable "aws_lb_listener_rule_variable_condition_http_header_name" {
}
variable "aws_lb_listener_rule_variable_condition_http_header_values" {
  type        = list(string)
}
variable "aws_lb_listener_rule_variable_condition_http_request_method_values" {
  type        = list(string)
}
variable "aws_lb_listener_rule_variable_condition_path_pattern_values" {
  type        = list(string)
}
variable "aws_lb_listener_rule_variable_condition_query_string_key" {
}
variable "aws_lb_listener_rule_variable_condition_query_string_values" {
  type        = list(string)
}
variable "aws_lb_listener_rule_variable_condition_source_ip_values" {
  type        = list(string)
}
variable "aws_lb_listener_rule_variable_action_fixed_response_content_type" {
}
variable "aws_lb_listener_rule_variable_action_fixed_response_message_body" {
}
variable "aws_lb_listener_rule_variable_action_fixed_response_status_code" {
}
variable "aws_lb_listener_rule_variable_action_authenticate_cognito_user_pool_arn" {
}
variable "aws_lb_listener_rule_variable_action_authenticate_cognito_user_pool_client_id" {
}
variable "aws_lb_listener_rule_variable_action_authenticate_cognito_user_pool_domain" {
}
variable "aws_lb_listener_rule_variable_action_authenticate_oidc_authorization_endpoint" {
}
variable "aws_lb_listener_rule_variable_action_authenticate_oidc_client_id" {
}
variable "aws_lb_listener_rule_variable_listener_arn" {
}
variable "aws_lb_listener_rule_variable_priority" {
}
variable "aws_lb_listener_rule_variable_tags" {
  type        = map(string)
}
variable "aws_lb_listener_rule_variable_action_type" {
}
variable "aws_lb_listener_rule_variable_action_target_group_arn" {
}
variable "aws_lb_listener_rule_variable_action_order" {
}
variable "aws_lb_listener_rule_variable_action_redirect_port" {
}
variable "aws_lb_listener_rule_variable_action_redirect_protocol" {
}
variable "aws_lb_listener_rule_variable_action_authenticate_oidc_client_secret" {
}
/*-------------LISTENER RULE VARS END-------------*/

