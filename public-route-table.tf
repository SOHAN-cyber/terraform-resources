resource "aws_route_table" "public-route1" {
     vpc_id =  aws_vpc.main.id
     route {
         cidr_block = var.route_cidr
         gateway_id = aws_internet_gateway.aws_internet_gateway.id
     }
     tags = {
       "Name" = format("%s-public-rt1", var.name)
     }
}

resource "aws_route_table_association" "public_route_table_association1" {
  count = length(var.subnet_cidr)
  subnet_id = element(aws_subnet.subnet.*.id, 1)
  # subnet_id = slice(aws_subnet.subnet, 0, 3)
  route_table_id = aws_route_table.public-route1.id
}