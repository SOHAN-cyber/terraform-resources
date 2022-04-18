variable "vpc_name" {
  description = "vpc-name"
  type = map(string)
  default = {
    "Name" = "ot247-vpc"
  }
}

variable "flow_logs" {
  type = map
  default = {
    Name = "ot247-vpcflowlogs"
    }
}

variable "subnet_tag" {
  description = "subnet tags"
  type = map
  default = {
    Subnet = "ot247-subnet"
    }
}

variable "name" {
  type = string
  default = "ot-247"
}
variable "flow_log_name" {
  description = "Vpc flow Name"
  type = string
  default = "vpc-flow-ot247"
}

variable "nat_gate_name" {
  description = "Nat Gateway Name"
  type = map
  default = {
    Name = "ot247-nat"
    }
}

variable "vpc_eip" {
  description = "EIP Name"
  type = map(string)
  default = {
    Name = "ot247-eip"
}
}

variable "sg1_name" {
  description = "SG1"
  type = map
  default = {
    "Name" = "OT247-SG"
  }
}

variable "enable_vpc_flow_logs" {
  description = "Do you want to enable vpc flow logs"
  type = bool
  default = true
}

variable "nat_gateway_subnet" {
  description = "Where you want to create nat_gateway "
  type = number
  default = 1
}

variable "igw_name" {
  description = "Name for the internet"
  type = string
  default = "ot247-igw"
}


variable "port_number" {
  description = "Port range you want to open"
  type = list(number)
  default = [80, 443]
}

variable "tags" {
  description = "Name of the tag"
  type = map
  default = {
    "Owner" = "ot247"
  }
}

variable "vpc_tags" {
  description =  "vpc tags"
  type = map
  default = {
    "Name" = "vpc"
  }
}

variable "aws_region" {
  description = "Region in which you want to create vpc"
  type = string
  default = "ap-south-1"
}

variable "vpc_cidr_blocks" {
   description = "Cidr block for vpc"
   type = string
   default = "10.0.0.0/16"
}
variable "instance_tenancy" {
  description = "Type of tenanacy that vpc will make use"
  type = string
  default = "default"
}

variable "enable_dns_support" {
  description = "thus for enabling dns support in vpc"
  type  = bool
  default = true
}

variable "enable_dns_hostnames" {
  description = "THis should be enable in vpc"
  type = bool
  default = true
}

variable "log_destination_type" {
  description = "Destination type in which you want to save vpc logs"
  type = string
  default = "s3"
}

variable "log_destination" {
  description = "S3 Log bucket destination"
  type = string
  default = "arn:aws:s3:::opensearch-snashot"
}

variable "traffic_type" {
  description = "Type of traffic you want to store in vpc logs"
  type = string
  default = "ALL"
}

variable "file_format_type" {
  description = "Format of vpc flow logs data"
  type = string
  default = "parquet"
}
variable "per_hour_partition" {
  description = "Do you want to store 1 hour logs as parition"
  type = bool
  default = true
}

variable "subnet_name" {
  description = "Name of the subnet"
  type = string
  default = "subnet"
}

variable "public_ip" {
  description = "Do you want to add public ip on launch"
  type = bool
  default = true
}

variable "AZs" {
  description = "Name of the Azs"
  type = list(string)
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}

variable "private_subnet_name" {
  description = "cidr value for subnets"
  type = string
  default = "private"
}

variable "route_cidr" {
  description = "CIDR for routetable"
  type = string
  default = "0.0.0.0/0"
}

variable "description" {
  description = "Description for SG"
  type = string
  default = "Creating SG1"
}

variable "nacl_name" {
  description = "NACL NAME"
  type = map
  default = {
  Name = "ot247-nacl"
  }
}

variable "ingress_port_range" {
  description = "Port range for NACL Group"
  type = list(number)
  default = [80, 443, 22]
}

variable "nacl_egress_rule_no" {
  description = "Starting rule number for the entry in NACL egress rule"
  default     = 200
}

variable "nacl_egress_protocol" {
  description = "Protocol on which NACL egress rule applied. If using the -1 'all' protocol,"
  default     = "tcp"
}

variable "nacl_egress_action" {
  description = "Action to allow or deny the traffic that matches the rule"
  default     = "allow"
}

variable "nacl_egress_from_port" {
  description = "The from port to match rule in NACl egress"
  type        = list(number)
  default     = [80, 443, 22]
}

variable "nacl_egress_to_port" {
  description = "The to port to match rule in NACl egress"
  type        = list(number)
  default     = [80, 443, 22]
}

variable "public_subnet_tag" {
  description = "Public Subnet Tag"
  type = map(string)
  default = {
    "Name" = "ot247-public-rt"
  }
}

variable "private_subnet_tag" {
  description = "Public Subnet Tag"
  type = map(string)
  default = {
    "Name" = "ot247-private-rt"
  }
}

variable "nacl_ingress_rule_no" {
  description = "Starting rule number for the entry in NACL ingress rule"
  default     = 100
}

variable "nacl_ingress_protocol" {
  description = "Protocol on which NACL ingress rule applied. If using the -1 'all' protocol,"
  default     = "tcp"
}

variable "nacl_ingress_action" {
  description = "Action to allow or deny the traffic that matches the rule"
  default     = "allow"
}

variable "nacl_ingress_from_port" {
  description = "The from port to match rule in NACl ingress"
  type        = list(number)
  default     = [80, 443, 22]
}

variable "nacl_ingress_to_port" {
  description = "The to port to match rule in NACl ingress"
  type        = list(number)
  default     = [80, 443, 22]
}

variable "SG_DESCRIPTION" {
  description = "Security group description"
  type = string
  default = "Security group for instances"
}

variable "egress_to_port" {
  description = "outbound traffic from instance"
  type = list(number)
  default = [80,443]
}

variable "egress_from_port" {
   description = "Inbound traffic from instance"
  type = list(number)
  default = [80,443]
}

variable "ingress_to_port" {
  description = "outbound traffic from instance"
  type = list(number)
  default = [80,443]
}

variable "ingress_from_port" {
   description = "Inbound traffic from instance"
  type = list(number)
  default = [80,443]
}

variable "cidr_block" {
  description = "value"
  type = string
  default = "0.0.0.0/0"
}

variable "ingress_whitelist_ip_addr" {
  description = "ingress_whitelist ip address list"
  type = map
  default = {
  1 = "10.76.2.3/32"
  2 = "123.4.5.4/32"
  3 = "23.43.22.2/32"
  }
  }

variable "egress_whitelist_ip_addr" {
  description = "whitelist ip address list"
  type = map
  default = {
  1 = "10.76.2.3/32"
  2 = "123.4.5.4/32"
  3 = "23.43.22.2/32"
  }
  }

variable "sg2_name" {
  description = "Security group 2"
  type = map
  default = {
    "Name" = "OT247-SSH-SG"
  }
}

variable "protocol_type" {
  description = "Type of protocol you want to use"
  type = string
  default = "tcp"
}

variable "SSH_Description" {
  description = "Description of ssh secuirty Group"
  type = string
  default = "Allowed SSH connection from these IPs Only"
}

variable "instance_public_ip" {
  description = "EC2 instance public ip"
  type = string
  default = "102.44.55.66/32"
}

variable "subnet_cidr" {
  description = "Subnet that you want to create"
  type = list(string)
  default = [ "10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24", "10.0.14.0/24", "10.0.15.0/24", "10.0.16.0/24" ]
}

variable "public_subnet_count" {
  description = "Public subnet"
  type = number
  default = 3
}

variable "private_subnet_count" {
  description = "Private subnet"
  type = number
  default = 3
}