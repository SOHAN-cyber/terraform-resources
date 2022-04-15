output "vpc_id" {
  description = "VPC ID"
  value = aws_vpc.main.id
}

output "vpc-flow-log-id" {
  description = "vpc-flow-logs-id"
  value = aws_flow_log.main.id
}

output "public-subnet-id" {
  description = "public-subnet-id"
  value = aws_subnet.public_subnet.*.id
}

output "private-subnet-id" {
  description = "private-subnet-id"
  value = aws_subnet.private-subnet.*.id
}

output "EIP" {
  description = "Elasitc ip address"
  value = aws_eip.my_eip.public_ip
}

output "internet_gateway" {
  description = "Internet gateway id"
  value = aws_internet_gateway.aws_internet_gateway.id
}

output "nat_gateway" {
  description = "NAT gateway id"
  value = aws_nat_gateway.my-nat.id
}

output "nacl_id" {
  description = "NACL ID"
  value = aws_network_acl.my_acl.id
}

output "Security_group_instance" {
  description = "Security group for instances"
  value = aws_security_group.SG1.id
}

output "Security_group_ssh" {
  description = "Security group for ssh"
  value = aws_security_group.ssh_sg.id
}


output "subnet_ids" {
  description = "Output the subnet id for subnet"
  value = aws_subnet.subnet.*.id
}