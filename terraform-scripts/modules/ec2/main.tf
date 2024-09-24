resource "aws_instance" "app_server" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  tags={
    name="AppServer"
  }
}

variable "ami" {
  default = "ami-12345678"
}

variable "instance_type" {
  default = "t2.micro"
}
variable "subnet_id" {
  type        = string
}
