variable "tags" {
  type = map(string)
  default = {
    "Name"         = "My-Vpc"
    "owner"        = "Terraform"
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