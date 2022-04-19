output "pt-route-id" {
  description = "Private route table id"
  value = aws_route_table.private-route1.id
}

output "pb-route-id" {
  description = "Private route table id"
  value = aws_route_table.public-route1.id
}

output "pt-route-subnet-id" {
 description = "Subnet associated with private rt"
value = aws_route_table_association.private_route_table_association1.*.subnet_id
}

output "pb-route-subnet-id" {
 description = "Subnet associated with private rt"
value = aws_route_table_association.public_route_table_association1.*.subnet_id
}