# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
  ami                         = "ami-026b57f3c383c2eec"
  instance_type               = "t2.micro"
  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = aws_subnet.public_sub1.id
  associate_public_ip_address = true
  user_data                   = file("foodapp.sh")
  tags = {
    Name = "food-application"

  }

}


# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance1" {
  ami                         = "ami-026b57f3c383c2eec"
  instance_type               = "t2.micro"
  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = aws_subnet.public_sub2.id
  associate_public_ip_address = true
  user_data                   = file("candycrush.sh")
  tags = {
    Name = "candy-crush"

  }

}

