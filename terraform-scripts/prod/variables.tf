variable "ami" {
  default = "ami-87654321"
}
variable "cidr_block" {
  
}
variable "public_subnets" {
  type=list(string)
}

variable "instance_type" {
  default = "t2.micro"
}

variable "db_username" {
  default = "prod_admin"
}

variable "db_password" {
  default = "prod_password"
}
variable "availability_zones" {
  
}