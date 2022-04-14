resource "aws_nat_gateway" "my-nat" {
  allocation_id = aws_eip.my_eip.id
  subnet_id = aws_subnet.public_subnet[0].id

  tags = {
    "Name" = format("%s-nat", var.name)
  }
}
