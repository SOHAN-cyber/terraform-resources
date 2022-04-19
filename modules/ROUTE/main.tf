resource "aws_route_table" "private-route1" {
  vpc_id = var.vpcid
  route {
    cidr_block     = var.route_cidr
    nat_gateway_id = var.nat_gateway
  }
  tags = merge({
    "Name" = var.private_route_name
    },
    var.private_route_tag,
    var.tags
  )
}

resource "aws_route_table_association" "private_route_table_association1" {
  count          = var.private_subnet_count
  subnet_id      = element(var.subnetid1, count.index + var.public_subnet_count)
  route_table_id = aws_route_table.private-route1.id
}

resource "aws_route_table" "public-route1" {
  vpc_id = var.vpcid
  route {
    cidr_block = var.route_cidr
    gateway_id = var.internet_gateway
  }
  tags = merge({
    "Name" = var.public_route_name
    },
    var.public_route_tag,
    var.tags
  )
}

resource "aws_route_table_association" "public_route_table_association1" {
  count          = var.public_subnet_count
  subnet_id      = element(var.subnetid2, count.index)
  route_table_id = aws_route_table.public-route1.id
}