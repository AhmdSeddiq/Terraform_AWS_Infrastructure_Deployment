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
