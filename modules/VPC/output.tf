output "VPC_ID" {
  description = "vpc id of the vpc"
  value = aws_vpc.main.id
}

output "aws_flow_log" {
  description = "VPC Flow logs id"
  value = aws_flow_log.main.*.id
}

output "aws_flow_tag_name" {
  description = "Tag for vpc flow logs"
  value = aws_flow_log.main[*].tags
}

output "aws_name" {
  description = "tag for aws_vpc_name"
  value = var.tag
}