resource "aws_eip" "terraform_nat_eip" {
  count = length(var.cidr_private_subnet)
}

resource "aws_nat_gateway" "terraform_nat_gateway" {
  count      = length(var.cidr_private_subnet)
  depends_on = [aws_eip.terraform_nat_eip]
  allocation_id = aws_eip.terraform_nat_eip[count.index].id
  subnet_id = aws_subnet.terraform_private_subnets[count.index].id
  tags = {
    "Name" = "Terraform_Private_NAT_GW_${count.index}"
  }
}
