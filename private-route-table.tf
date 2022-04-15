# resource "aws_route_table" "private-route1" {
#   vpc_id = aws_vpc.main.id
#   route  {
#     cidr_block = var.route_cidr
#     nat_gateway_id = aws_nat_gateway.my-nat.id
#   }
#   tags = {
#        "Name" = format("%s-private-rt1", var.name)
#      }
# }

# resource "aws_route_table_association" "private_route_table_association1" {
# count = length(var.subnet_cidr)
# #subnet_id = element(aws_subnet.subnet.*.id, 2)
# subnet_id = (slice(aws_subnet.subnet, 3, 6))
# route_table_id = aws_route_table.private-route1.id
# }