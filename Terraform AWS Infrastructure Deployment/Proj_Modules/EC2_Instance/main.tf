resource "aws_instance" "ec2_instance" {
  ami                    = var.AMI-ID
  instance_type          = var.INS-TYPE
  subnet_id              = var.Sub-ID
  key_name               = var.KEY
  vpc_security_group_ids = var.SECURITY-GRO-ids
  user_data              = var.USERDATA

  tags = {
    Name = "EC2Instance"
  }
}

