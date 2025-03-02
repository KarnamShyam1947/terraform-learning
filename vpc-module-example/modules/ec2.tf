data "aws_subnet" "public_subnet" {
  filter {
    name = "tag:Name"
    values = ["Terraform_Public_Subnet_1"]
  }

  depends_on = [
    aws_route_table_association.terrafrom_public_subnet_asso
  ]
}

resource "aws_instance" "ec2_example" {
  ami = "ami-0767046d1677be5a0"
  instance_type = "t2.micro"
  tags = {
    Name = "EC2 Public subnet 1"
  }
  key_name= "shyam-devops"
  subnet_id = data.aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.terraform_security_group.id]
}