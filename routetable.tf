# Creating Route Table
resource "aws_route_table" "terra_rt" {
  vpc_id = aws_vpc.demo_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terra_igw.id
  }
  tags = {
    Name = "route to internet"

  }
}

# Associating Route Table
resource "aws_route_table_association" "rt1" {
  subnet_id      = aws_subnet.public_sub1.id
  route_table_id = aws_route_table.terra_rt.id

}

# Associating Route Table
resource "aws_route_table_association" "rt2" {
  subnet_id      = aws_subnet.public_sub2.id
  route_table_id = aws_route_table.terra_rt.id

}