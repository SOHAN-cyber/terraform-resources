region                         = "ap-south-1"
vpc_cidr                       = "10.0.0.0/16"
instance_tenancy               = "default"
dns_hostnames                  = true
dns_support                    = true
enable_vpc_flow_logs           = true
S3_bucket_arn                  = "arn:aws:s3:::opensearch-snashot"
capturing_logs_traffic         = "ALL"
file_format_logs               = "parquet"
enable_per_hour_logs_partition = true
vpc_name                       = "ot247-vpc"

tag = {
  Owner = "ot247"
}
tag_flow_logs = {
  Name = "ot247-vpcflow-logs"
}

igw_name = "0t247-igw"


subnet_cidr_block = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

AZs = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]

subnet_tag = {
  Tag = "ot-247-Subnet"
}

subnet_name = "ot247-subnet"


map_public_ip_on_launch = false

eip = "ot247-eip"


nate_name = "ot247-nat"

nat_subnet = 1

default_route = "0.0.0.0/0"

public_route_name = "ot247-public-rt"

private_route_name = "0t247-private-rt"

private_route_tag = {
  "Route" = "private-rt"
}

public_subnet_count = 3

private_subnet_count = 3

public_route_tag = {
  "Route" = "public-rt"
}

nacl_name = {
  Name = "ot247-nacl"
}

ingress_port = [22, 80, 443]

egress_rule_no = 300

nacl_egress_proto = "tcp"

nacl_egress_action = "allow"

default_cidr = "0.0.0.0/0"

nacl_egress_from_port = [22, 80, 443]

nacl_egress_to_port = [22, 80, 443]

nacl_ingress_rule = 100

nacl_ing_proto = "tcp"

nacl_ing_action = "allow"

nacl_ingress_from_port = [80, 443, 22]

nacl_ingress_to_port = [80, 443, 22]

security_group_port_range = [80, 443]

ingress_whitelist_ip_addr = ["20.34.34.32/32", "30.34.45.65/32", "40.34.45.32/32"]


egress_whitelist_ip_addr = ["0.0.0.0/0"]

sg1_name = {
  Name = "ot247-SG"
}

sg2_name = {
  Name = "ot247-SSH-SGs"
}