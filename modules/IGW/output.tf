output "IGW_ID" {
  description = "igw id"
  value = aws_internet_gateway.aws_internet_gateway.id
}

output "IGW_NAME" {
  description = "IGW NAME"
  value = aws_internet_gateway.aws_internet_gateway.tags
}