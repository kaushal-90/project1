# Creating 1st web subnet
resource "aws_subnet" "public_sub1" {
  vpc_id     = aws_vpc.demo_vpc.id
  cidr_block = "192.168.10.0/24"

  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"
  tags = {
    Name = "web_sub_1"

  }

}


# Creating 2nd web subnet
resource "aws_subnet" "public_sub2" {
  vpc_id                  = aws_vpc.demo_vpc.id
  cidr_block              = "192.168.20.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1b"
  tags = {
    Name = "web_sub_2"

  }


}

# Creating 1st application subnet
resource "aws_subnet" "private_subnet-1" {
  vpc_id                  = aws_vpc.demo_vpc.id
  cidr_block              = "192.168.30.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1a"
  tags = {
    Name = "app_sub_1"

  }

}

# Creating 2nd application subnet
resource "aws_subnet" "private_subnet-2" {
  vpc_id                  = aws_vpc.demo_vpc.id
  cidr_block              = "192.168.40.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1b"
  tags = {
    Name = "app_sub_2"

  }

}
