resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.terraform_vpc_demo.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terraform_internet_gateway.id
  }
  tags = {
    Name = "Terraform_RT_Public"
  }
}

resource "aws_route_table" "private_route_table" {
  count      = length(var.cidr_private_subnet)
  vpc_id = aws_vpc.terraform_vpc_demo.id
  depends_on = [aws_nat_gateway.terraform_nat_gateway]
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.terraform_nat_gateway[count.index].id
  }
  tags = {
    Name = "Terraform_RT_Private"
  }
}