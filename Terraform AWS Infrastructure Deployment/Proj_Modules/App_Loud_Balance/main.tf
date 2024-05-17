

/* -- ALB Target Group */
resource "aws_lb_target_group_attachment" "test" {
  target_group_arn  = var.target_group.arn
  availability_zone = var.availazone
  target_id         = var.tarid
}

resource "aws_lb" "test" { 
  name               = var.The_Name
  name_prefix        = var.Prefix_Name
  internal           = var.internal_VAR
  load_balancer_type = var.load_balancer_type
  security_groups    = var.security_groups
  subnets            = var.subnets

  enable_deletion_protection = var.enable_deletion_protection

  access_logs {
    bucket  = var.access_logs_bucket
    prefix  = var.access_logs_prefix
    enabled = var.access_logs_enabled
  }

  connection_logs {
    bucket  = var.connection_logs_bucket
    prefix  = var.connection_logs_prefix
    enabled = var.connection_logs_enabled
  }

  subnet_mapping {
    subnet_id            = var.subnet_mapping_subnet_id
    allocation_id        = var.subnet_mapping_allocation_id
    ipv6_address         = var.subnet_mapping_ipv6_address
    private_ipv4_address = var.subnet_mapping_private_ipv4_address
  }

  customer_owned_ipv4_pool                                     = var.customer_owned_ipv4_pool
  desync_mitigation_mode                                       = var.desync_mitigation_mode
  dns_record_client_routing_policy                             = var.dns_record_client_routing_policy
  drop_invalid_header_fields                                   = var.drop_invalid_header_fields
  enable_cross_zone_load_balancing                             = var.enable_cross_zone_load_balancing

}

/* -- Target Group */
resource "aws_lb_target_group" "alb-example" {
  name_prefix = var.Prefix_Name
  name        = var.The_Name
  protocol    = var.OUR_Protocol
  vpc_id      = var.OURVPC_id

  connection_termination = var.ConnecTermination
  deregistration_delay   = var.DeregisDelay

  lambda_multi_value_headers_enabled = var.LambdaMUL_VAL-Headers_en
  load_balancing_algorithm_type      = var.LoadBala-algo

  stickiness {
    cookie_duration = var.stickiness.cookie_duration
    cookie_name     = var.stickiness.cookie_name
    enabled         = var.stickiness.enabled
    type            = var.stickiness.type
  }

  target_failover {
    on_deregistration = var.target_failover.on_deregistration
    on_unhealthy      = var.target_failover.on_unhealthy
  }

  target_health_state {
    enable_unhealthy_connection_termination = var.target_health_state.enable_unhealthy_connection_termination
  }

}

/* -- Listener rule */
resource "aws_lb_listener_rule" "example_rule" {
  listener_arn = var.aws_lb_listener_rule_variable_listener_arn
  priority     = var.aws_lb_listener_rule_variable_priority
  tags         = var.aws_lb_listener_rule_variable_tags

  action {
    type             = var.aws_lb_listener_rule_variable_action_type
    target_group_arn = var.aws_lb_listener_rule_variable_action_target_group_arn
    order            = var.aws_lb_listener_rule_variable_action_order

    authenticate_cognito {
      user_pool_arn       = var.aws_lb_listener_rule_variable_action_authenticate_cognito_user_pool_arn
      user_pool_client_id = var.aws_lb_listener_rule_variable_action_authenticate_cognito_user_pool_client_id
      user_pool_domain    = var.aws_lb_listener_rule_variable_action_authenticate_cognito_user_pool_domain
    }

    authenticate_oidc {
      authorization_endpoint = var.aws_lb_listener_rule_variable_action_authenticate_oidc_authorization_endpoint
      client_id              = var.aws_lb_listener_rule_variable_action_authenticate_oidc_client_id
      client_secret          = var.aws_lb_listener_rule_variable_action_authenticate_oidc_client_secret
      issuer                 = var.aws_lb_listener_rule_variable_action_authenticate_oidc_issuer
      token_endpoint         = var.aws_lb_listener_rule_variable_action_authenticate_oidc_token_endpoint
      user_info_endpoint     = var.aws_lb_listener_rule_variable_action_authenticate_oidc_user_info_endpoint
    }

    fixed_response {
      content_type = var.aws_lb_listener_rule_variable_action_fixed_response_content_type
      message_body = var.aws_lb_listener_rule_variable_action_fixed_response_message_body
      status_code  = var.aws_lb_listener_rule_variable_action_fixed_response_status_code
    }

    forward {
      target_group {
        arn    = var.aws_lb_listener_rule_variable_action_target_group_arn
        weight = 80
      }
    }

    redirect {
      port        = var.aws_lb_listener_rule_variable_action_redirect_port
      protocol    = var.aws_lb_listener_rule_variable_action_redirect_protocol
      status_code = var.aws_lb_listener_rule_variable_action_redirect_status_code
    }
  }

  condition {
    host_header {
      values = var.aws_lb_listener_rule_variable_condition_host_header_values
    }

    http_header {
      http_header_name = var.aws_lb_listener_rule_variable_condition_http_header_name
      values           = var.aws_lb_listener_rule_variable_condition_http_header_values
    }

    http_request_method {
      values = var.aws_lb_listener_rule_variable_condition_http_request_method_values
    }

    path_pattern {
      values = var.aws_lb_listener_rule_variable_condition_path_pattern_values
    }

    source_ip {
      values = var.aws_lb_listener_rule_variable_condition_source_ip_values
    }
  }
}

/* -- ALB Listener  */
resource "aws_lb_listener" "test" {
  load_balancer_arn = var.aws_lb_listener.arn
  port              = var.AWS-Lb-Lis-Port
  protocol          = var.AWS-Lb-Lis-Protocol
  ssl_policy        = var.AWS-Lb-Listener-ssl-pol
  certificate_arn   = var.AWS-Lb-Lis-Certificate-arn

  default_action {
    type             = "forward"
    target_group_arn = var.AWS-Lb-Lis-default-acttargetgroup-arn
  }
}

