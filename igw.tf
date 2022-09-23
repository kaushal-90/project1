# Creating Internet Gateway
resource "aws_internet_gateway" "terra_igw" {
  vpc_id = aws_vpc.demo_vpc.id


}