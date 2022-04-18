resource "aws_route_table" "private-route1" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block     = var.route_cidr
    nat_gateway_id = aws_nat_gateway.my-nat.id
  }
  tags = merge({
    "Name" = var.name
    },
    var.private_subnet_tag,
    var.tags
  )
}

resource "aws_route_table_association" "private_route_table_association1" {
  count          = var.private_subnet_count
  subnet_id      = element(aws_subnet.subnet.*.id, count.index + var.public_subnet_count)
  route_table_id = aws_route_table.private-route1.id
}

resource "aws_route_table" "public-route1" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = var.route_cidr
    gateway_id = aws_internet_gateway.aws_internet_gateway.id
  }
  tags = merge({
    "Name" = var.name
    },
    var.public_subnet_tag,
    var.tags
  )
}

resource "aws_route_table_association" "public_route_table_association1" {
  count          = var.public_subnet_count
  subnet_id      = element(aws_subnet.subnet.*.id, count.index)
  route_table_id = aws_route_table.public-route1.id
}