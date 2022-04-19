variable "region" {
  description = "AWS REGION"
  type        = string
}

variable "vpc_cidr" {
  description = "vpc cidr block range"
  type        = string
}

variable "instance_tenancy" {
  description = "Instance tenancy in vpc"
  type        = string
}

variable "dns_hostnames" {
  description = "Want to enable dns hostname"
  type        = bool
}

variable "dns_support" {
  description = "Want to enable dns support or not"
  type        = bool
}

variable "vpc_name" {
  description = "name of the vpc"
  type        = string
}

variable "tag" {
  description = "tag for all resources"
  type        = map(any)
}

variable "enable_vpc_flow_logs" {
  description = "Want to enable vp flow logs"
  type        = bool
}

variable "S3_bucket_arn" {
  description = "S3 bucket arn"
  type        = string
}

variable "capturing_logs_traffic" {
  description = "capturing log traffic type"
  type        = string
}

variable "file_format_logs" {
  description = "In which format you want to store the logs"
  type        = string
}

variable "enable_per_hour_logs_partition" {
  description = "Do you want to enable hour wise logs file partition or not"
  type        = bool
}

variable "tag_flow_logs" {
  description = "Do you want to enable tag"
  type        = map(any)
}

variable "igw_name" {
  description = "Name for the internet gateway"
  type        = string
}

variable "subnet_cidr_block" {
  description = "Subnet Cidr Block"
  type        = list(string)
}

variable "AZs" {
  description = "List of AZs"
  type        = list(string)
}

variable "subnet_tag" {
  description = "Subnet_tag"
  type        = map(any)
}

variable "subnet_name" {
  description = "Subnet_name"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "Do you want to  public ip on launch"
  type        = bool
}

variable "eip" {
  description = "vpc eip"
  type        = string
}

variable "nate_name" {
  description = "NAT GATEWAY NAME"
  type        = string
}

variable "nat_subnet" {
  description = "Subnet on which nat gateway will be create"
  type        = number
}
variable "default_route" {
  description = "gateway of last resort"
  type        = string
}

variable "public_route_name" {
  type = string
}

variable "private_route_name" {
  type = string
}

variable "private_route_tag" {
  type = map(any)
}

variable "public_subnet_count" {
  type = number
}

variable "private_subnet_count" {
  type = number
}

variable "public_route_tag" {
  type = map(any)
}


variable "nacl_name" {
  description = "nacl name"
  type        = map(any)
}

variable "ingress_port" {
  type = list(number)
}

variable "egress_rule_no" {
  type = number
}

variable "nacl_egress_proto" {
  type = string
}

variable "nacl_egress_action" {
  type = string
}

variable "default_cidr" {
  type = string
}

variable "nacl_egress_from_port" {
  type = list(number)
}


variable "nacl_egress_to_port" {
  type = list(number)
}

variable "nacl_ingress_rule" {
  type = number
}

variable "nacl_ing_proto" {
  type = string
}

variable "nacl_ing_action" {
  type = string
}

variable "nacl_ingress_from_port" {
  type = list(number)
}

variable "nacl_ingress_to_port" {
  type = list(number)
}

variable "security_group_port_range" {
  description = "port range for security group"
  type        = list(number)
}


variable "ingress_whitelist_ip_addr" {
  type = list(string)
}

variable "egress_whitelist_ip_addr" {
  type = list(string)
}

variable "sg1_name" {
  type = map(any)
}

variable "sg2_name" {
  type = map(any)
}