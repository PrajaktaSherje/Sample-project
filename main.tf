module "vpc" {
  source            = "./module/aws_vpc"
  tags                     = var.tags
  public_subnet_cidr_block = var.public_subnet_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block
  public_tags               = var.public_tags
  private_tags              = var.private_tags
  pub_availability_zones    = var.pub_availability_zones
  pri_availability_zones    = var.pri_availability_zones

}
module "ec2" {
    source = "./module/ec2"
    instance_termination = false
    instance_monitoring = false
    vpc_id =  var.vpc_id
    
#     security_group_rule = {
#     ingress = var.ingress_rules
#   }
  port = var.port

  instance_type = var.instance_type
  key_name = "demo"
  sg_name = "terraform"
  tags = "main"
  description = var.description
  portip = var.portip

}
