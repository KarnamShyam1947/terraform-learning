resource "aws_subnet" "terraform_public_subnets" {
  count      = length(var.cidr_public_subnet)
  vpc_id     = aws_vpc.terraform_vpc_demo.id
  cidr_block = element(var.cidr_public_subnet, count.index)
  availability_zone = element(var.us_availability_zone, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "Terraform_Public_Subnet_${count.index + 1}"
  }
}

resource "aws_subnet" "terraform_private_subnets" {
  count      = length(var.cidr_private_subnet)
  vpc_id     = aws_vpc.terraform_vpc_demo.id
  cidr_block = element(var.cidr_private_subnet, count.index)
  availability_zone = element(var.us_availability_zone, count.index)

  tags = {
    Name = "Terraform_Private_Subnet_${count.index + 1}"
  }
}
