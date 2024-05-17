resource "aws_launch_configuration" "example" {
  name          = var.LAUN-CONFIG-name
  image_id      = "ami-12345678" 
  instance_type = "t2.micro"     

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "auto_scaling_group" {
  name                          = "example-autoscaling-group"
  launch_configuration          = aws_launch_configuration.example.name
  min_size                      = var.MIN-SIZE
  max_size                      = var.MAX-SIZE
  desired_capacity              = var.Desired-CAP
  vpc_zone_identifier           = var.VPC-Zone-ID
  health_check_type             = var.Health-Check-Type
  health_check_grace_period     = var.Health-Check-Gr-PERI
  tag {
    key                 = "Name"
    value               = "AutoScalingGroup"
    propagate_at_launch = true
  }
}