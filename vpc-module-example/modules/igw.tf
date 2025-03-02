resource "aws_internet_gateway" "terraform_internet_gateway" {
  vpc_id = aws_vpc.terraform_vpc_demo.id
  tags = {
    Name = "Terraform_IGW"
  }
}