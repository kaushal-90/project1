# Creating VPC
resource "aws_vpc" "demo_vpc" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "terra_vpc"
  }

}