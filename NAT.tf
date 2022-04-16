resource "aws_eip" "my_eip" {
  vpc = true

  tags = {
    "Name" = format("%s", var.vpc_eip)
  }
}

resource "aws_nat_gateway" "my-nat" {
  allocation_id = aws_eip.my_eip.id
  subnet_id = aws_subnet.subnet[var.nat_gateway_subnet].id

  tags = merge ({
    "Name" =  var.nat_gate_name
  },
var.tags,
var.nat_gate_name
  )
}