variable "vpc_cidr_blocks" {
  description = "vpc cidr block"
  type = string
}

variable "instance_tenancy" {
  description = "instance tenancy type"
  type = string
}

variable "enable_dns_hostnames" {
 description = "Want to enable dns hostname"
 type = bool 
}

variable "enable_dns_support" {
  description = "Want to enavle dns support"
  type = bool
}

variable "vpc_name" {
  description = "Name of vpc"
  type = string
}

variable "enable_vpc_flow_logs" {
  description = "Want to enable vpc flow logs"
  type = bool
}

variable "log_destination" {
  description = "S3 Bucket  ARN"
  type = string
}

variable "traffic_type" {
  description = "Type of traffic you want to store ALL/Accept pr Reject"
  type = string
}

variable "file_format_type" {
  description = "In which format you want to store the data of vpc flow logs"
  type = string
}

variable "per_hour_partition" {
  description = "Do you want to store the data hourwise or not"
  type = string
}

variable "flow_logs" {
  description = "tag for vpc flow logs"
  type = map
}

variable "tag" {
  description = "Tag for all the resources"
  type = map
}