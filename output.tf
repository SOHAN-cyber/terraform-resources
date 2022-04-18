output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "vpc-flow-log-id" {
  description = "vpc-flow-logs-id"
  value       = aws_flow_log.main.*.id
}

output "EIP" {
  description = "Elasitc ip address"
  value       = aws_eip.my_eip.public_ip
}

output "internet_gateway" {
  description = "Internet gateway id"
  value       = aws_internet_gateway.aws_internet_gateway.id
}

output "nat_gateway" {
  description = "NAT gateway id"
  value       = aws_nat_gateway.my-nat.id
}

output "nacl_id" {
  description = "NACL ID"
  value       = aws_network_acl.my_acl.id
}

output "subnet_id" {
  description = "Output the subnet id for subnet"
  value       = aws_subnet.subnet.*.id
}

output "public-rt" {
  description = "Attached public subnet"
  value       = aws_route_table.public-route1.id
}

output "private-rt" {
  description = "Attached private subnet"
  value       = aws_route_table.private-route1.id
}

output "subnet_name" {
  description = "Subnet Name"
  value       = aws_subnet.subnet.*.tags_all
}

output "public_route_table_subnet" {
  description = "Public route table subnet ID"
  value = aws_route_table_association.public_route_table_association1.*.subnet_id
}
