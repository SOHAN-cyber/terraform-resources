resource "aws_eip" "my_eip" {
  vpc = true

  tags = merge({
    "Name" = var.vpc-eip
    },
    var.tags
  )
}

resource "aws_nat_gateway" "my-nat" {
  allocation_id = aws_eip.my_eip.id
  subnet_id     = var.subnetid

  tags = merge({
    "Name" = var.nat_gate_name
    },
    var.tags
  )
}