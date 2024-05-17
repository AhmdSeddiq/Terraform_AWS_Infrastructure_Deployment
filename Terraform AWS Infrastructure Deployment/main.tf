#Calling All Modules:
# 1- ALB Module Calling
module "App_Loud_Balance" { 
  source = "../Proj_Modules/App_Loud_Balance" 
}
# 2- Auto Saclling Module Calling
module "Auto_Scal_Group" {
  source = "../Proj_Modules/Auto_Scal_Group"
}
# 3- DNS Module Calling
module "Domain_Name_Service" {
  source = "../Proj_Modules/Domain_Name_Service"
}
# 4- EC2 Module Calling
module "EC2_Instance" {
  source = "../Proj_Modules/EC2_Instance"
}
# 5- NAT Module Calling
module "NAT" {
  source = "../Proj_Modules/NAT"
}
# 6- Private Subnet Module Calling
module "Private_Sub" {
  source = "../Proj_Modules/Private_Sub"
}
# 7- Public Subnet Module Calling
module "Public_Sub" {
  source = "../Proj_Modules/Public_Sub"
}
# 8- RDS Module Calling
module "RDS" {
  source = "../Proj_Modules/RDS"
}
# 9- Security Group Moule Calling
module "Security_Gr" {
  source = "../Proj_Modules/Security_Gr" 
}
# 10- VPC Module Calling
module "VPC" {
  source = "../Proj_Modules/VPC"
}