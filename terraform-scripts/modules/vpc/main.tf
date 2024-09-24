resource "aws_vpc" "main"{
    cidr_block = var.cidr_block
    enable_dns_hostnames = true
    enable_dns_support = true
}

resource "aws_subnet" "public" {
    count=2
    vpc_id = aws_vpc.main.id
    cidr_block = var.public_subnets[count.index]
    availability_zone = element(var.availability_zones,count.index)
}
