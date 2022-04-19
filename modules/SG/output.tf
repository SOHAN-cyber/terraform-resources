output "SG2_ID" {
  description = "Security group id"
  value = aws_security_group.SG2.id
}

output "SG3_ID" {
  description = "Security group id"
  value = aws_security_group.SG3.id
}

output "open_ports_SG2" {
  description = "Security group id"
  value = aws_security_group.SG3.ingress
}

output "Whitelisted_ipadress" {
  description = "Security group id"
  value = aws_security_group.SG3.ingress
}