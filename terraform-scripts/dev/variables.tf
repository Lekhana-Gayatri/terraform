variable "ami" {
  default = "ami-12345678"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "db_username" {
  default = "dev_admin"
}

variable "db_password" {
  default = "dev_password"
}
variable "cidr_block" {
  
}
variable "public_subnets" {
  type        = list(string)
}
variable "availability_zones" {
  
}