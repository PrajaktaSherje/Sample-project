//Ec2

variable "port" {
  description = "The port to allow in the security group"
   type = number
  default = "22"
}


variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type = string
  default = "t2.micro"
}

variable "description" {
  description = "The posrt no description"
  type = string
  default = "This will allow you to access the ssh EC2 instance"
}
variable "portip" {
  description = " Ip address or CIDR for which user wants to open 22 port for instances."
  type = string
  default = "192.168.1.0/24"

}

variable "vpc_id" {
  type = string
  default = "192.168.0.0/16"
  
}
//aws_vpc
variable "tags" {
  type = map(string)
  default = {
    "Name"         = "My-Vpc"
    "owner"        = "Terraform"
  }
}
variable "public_tags" {
  type = map(string)
  default = {
    "Name" = "public_subnet"
  }
}
variable "private_tags" {
  type = map(string)
  default = {
  "Name" = "private_subnet"
  }
}
variable "public_subnet_cidr_block" {
  type    = list(string)
  default = ["192.168.1.0/24" ]
}


variable "private_subnet_cidr_block" {
  type    = list(string)
  default = ["192.168.3.0/24"]
}

variable "pub_availability_zones" {
  type = list(string)
  default = [
    "ap-south-1a", "ap-south-1c" , "ap-south-1d"
  ]
}
variable "pri_availability_zones" {
  type = list(string)
  default = [
    "ap-south-1a", "ap-south-1c"
  ]
}


