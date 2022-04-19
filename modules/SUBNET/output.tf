output "SUBNET_ID" {
  description = "SUBNET ID OF CREATED SUBNET"
  value = aws_subnet.subnet.*.id
}

output "subnet_tags" {
  description = "Subnet Tag"
  value = aws_subnet.subnet.*.tags_all
}

output "subnet_cidr" {
  description = "Given Cidr Range"
  value = aws_subnet.subnet.*.cidr_block
}

output "subnet_name" {
  description = "Subnet Name"
  value = var.name
}

output "AZs" {
  description = "List ofAzs in which Subnet will be created"
  value = var.AZs
}