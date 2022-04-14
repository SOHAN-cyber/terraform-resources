resource "aws_route_table" "public-route" {
     vpc_id =  aws_vpc.main.id
     route {
         cidr_block = var.route_cidr
         gateway_id = aws_internet_gateway.aws_internet_gateway.id
     }
     tags = {
       "Name" = format("%s-public-rt", var.name)
     }
}

resource "aws_route_table_association" "public_route_table_association" {
  count = length(var.public_subnet_cidr)
  subnet_id = element(aws_subnet.public_subnet.*.id, count.index)
  route_table_id = aws_route_table.public-route.id
}

resource "aws_route_table" "private-route" {
  vpc_id = aws_vpc.main.id
  route  {
    cidr_block = var.route_cidr
    nat_gateway_id = aws_nat_gateway.my-nat.id
  }
  tags = {
       "Name" = format("%s-private-rt", var.name)
     }
}

resource "aws_route_table_association" "private_route_table_association" {
count = length(var.private_subnet_cidr)
subnet_id = element(aws_subnet.private-subnet.*.id, count.index)
route_table_id = aws_route_table.private-route.id
}