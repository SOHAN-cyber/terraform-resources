output "nacl_id" {
  description = "NACL ID"
  value = aws_network_acl.my_acl.id
}

output "nacl_tag" {
  description = "NACL TAG"
  value = aws_network_acl.my_acl.tags_all
}