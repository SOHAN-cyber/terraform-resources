resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_blocks
  instance_tenancy = var.instance_tenancy
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support


   tags = merge(
    { "Name" = var.vpc_name
     },
     var.tags
  )
}

resource "aws_flow_log" "main" {
  count = var.enable_vpc_flow_logs ? 1 : 0
  log_destination = var.log_destination
  log_destination_type = "s3"
  traffic_type = var.traffic_type  
  vpc_id = aws_vpc.main.id  
  destination_options {
    file_format = var.file_format_type
    per_hour_partition = var.per_hour_partition
  }
  tags = merge({
    "Name" = var.flow_logs
  },
var.tags
  )
}