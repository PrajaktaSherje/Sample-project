

variable "instance_type" {
  type = string
  default = "t2.micro"
 
    
}
variable "vpc_id" {
  type = string
  default = "192.168.0.0/16"
  
}
variable "port" {
  type = number
  default = "22"
   
}
variable "key_name" {
  type = string
  default = "id_rsa.pub"
   
}
variable "sg_name" {
  type = list(string)
  default = [ "sg-000c2d03275fbfcc7" ]
   
}
variable "tags" {
  default = {
    "Name"         = "My-Ec2"
    "owner"        = "Terraform"
  }
}
   
variable "description" {
  type = string
  default = "This will allow you to access the ssh EC2 instance"
   
}
variable "portip" {
  type = string
  default = "192.168.1.0/24"
   
}
variable "instance_monitoring" {
  type = bool
  default = false
 
    
}
variable "instance_termination" {
  type = bool
  default = false
}