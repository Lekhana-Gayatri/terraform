provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source        = "../modules/vpc"
  cidr_block    = var.cidr_block
  public_subnets =var.public_subnets
  availability_zones = var.availability_zones
}

module "ec2" {
  source        = "../modules/ec2"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnets[1]
}

module "rds" {
  source        = "../modules/rds"
  db_username   = var.db_username
  db_password   = var.db_password
}
