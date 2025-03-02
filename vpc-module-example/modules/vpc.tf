
resource "aws_vpc" "terraform_vpc_demo" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "terraform_vpc_demo"
  }
}


