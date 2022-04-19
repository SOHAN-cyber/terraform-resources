output "vpc_eip" {
  description = "vpc_eip"
  value = aws_eip.my_eip.public_ip
}

output "aws_nat_gateway" {
  description = "NAT Gateway ID"
  value =  aws_nat_gateway.my-nat.id
}

output "subnet_id_nat" {
  description = "Subnet Id on which nat gate will be created"
  value = aws_nat_gateway.my-nat.subnet_id
}
output "eip_id" {
  description = "EIP id"
  value = aws_eip.my_eip.id
}