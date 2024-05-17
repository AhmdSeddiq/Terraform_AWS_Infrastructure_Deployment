#APP LOUD BALANCE MODULE VARS
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




#AUTO SACL GROUP MODULE VARS
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




#DNS MODULE VARS
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




#EC2 INS MODULE VARS
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




#NAT MODULE VARS
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




#PRIVATE SUBNET MODULE VARS
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




#PUBLIC SUBNET MODULE VARS
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




#RDS MODULE VARS
/*---------VARS PAR GROUP START---------*/
variable "parameters" {
  type = list(object({
    name  = string
    value = string
  }))

}
variable "THE-name" {
}
variable "name-OF-prefix" {
}
variable "family" {
}
variable "Description" {
}
variable "tags" {
}
/*---------VARS PAR GROUP END---------*/



/*---------VARS ROLE ASSO START---------*/
variable "db_cluster_identifier" {
}
variable "feature_name" {
}
variable "role_arn" {
}
/*---------VARS PAR GROUP END---------*/

/*---------VARS RDS START---------*/
variable "allocated_storage" {
}
variable "backtrack_window" {
}
variable "backup_retention_period" {
}
variable "cluster_identifier_prefix" {
}
variable "cluster_identifier" {
}
variable "copy_tags_to_snapshot" {
}
variable "database_name" {
}
variable "db_cluster_instance_class" {
}
variable "db_cluster_parameter_group_name" {
}
variable "db_instance_parameter_group_name" {
}
variable "db_subnet_group_name" {
}
variable "db_system_id" {
}
variable "delete_automated_backups" {
}
variable "deletion_protection" {
}
variable "domain" {
}
variable "domain_iam_role_name" {
}
variable "enable_global_write_forwarding" {
}
variable "enable_http_endpoint" {
}
variable "enable_local_write_forwarding" {
}
variable "enabled_cloudwatch_logs_exports" {
}
variable "engine_mode" {
}
variable "engine_version" {
}
variable "engine" {
}
variable "final_snapshot_identifier" {
}
variable "global_cluster_identifier" {
}
variable "iam_database_authentication_enabled" {
}
variable "iam_roles" {
}
variable "allow_major_version_upgrade" {
}
variable "apply_immediately" {
}
variable "availability_zones" {
  type        = list(string)
}
variable "iops" {
}
variable "kms_key_id" {
}
variable "skip_final_snapshot" {
}
variable "snapshot_identifier" {
}
variable "source_region" {
}
variable "storage_encrypted" {
}
variable "storage_type" {
}
variable "tags" {
}
variable "vpc_security_group_ids" {
  type        = list(string)
}
variable "manage_master_user_password" {
}
variable "master_password" {
}
variable "master_user_secret_kms_key_id" {
}
variable "master_username" {
}
variable "network_type" {
}
variable "port" {
}
variable "preferred_maintenance_window" {
}
variable "replication_source_identifier" {
}
variable "restore_to_point_in_time" {
}
variable "scaling_configuration" {
}
variable "serverlessv2_scaling_configuration" {
}
/*---------VARS RDS START---------*/


/*---------VARS END PO START---------*/
variable "count" {
}
variable "apply_immediately" {
}
variable "auto_minor_version_upgrade" {
}
variable "availability_zone" {
}
variable "ca_cert_identifier" {
}
variable "cluster_identifier" {
}
variable "copy_tags_to_snapshot" {
}
variable "custom_iam_instance_profile" {
}
variable "db_parameter_group_name" {
}
variable "db_subnet_group_name" {
}
variable "engine_version" {
}
variable "engine" {
}
variable "identifier_prefix" {
}
variable "identifier" {
}
variable "instance_class" {
}
variable "monitoring_interval" {
}
variable "monitoring_role_arn" {
}
variable "performance_insights_enabled" {
}
variable "performance_insights_kms_key_id" {
}
variable "performance_insights_retention_period" {
}
variable "preferred_backup_window" {
}
variable "preferred_maintenance_window" {
}
variable "promotion_tier" {
}
variable "publicly_accessible" {
}
variable "tags" {
}
/*---------VARS END PO END---------*/




#SECURITY GROUPE MODULE VARS
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




#VPC MODULE VARS
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

