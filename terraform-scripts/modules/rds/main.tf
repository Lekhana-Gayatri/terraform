resource "aws_db_instance" "database" {
  allocated_storage = 20
  engine = "mysql"
  instance_class = "db.t2.micro"
  username = var.db_username
  password = var.db_password
  skip_final_snapshot = true
  tags = {
    name = "mydatabase"
  }
}

variable "db_username" {
  default = "dev_admin"
}

variable "db_password" {
  default = "dev_password"
}