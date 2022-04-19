variable "vpcid" {
  description = "vpc id"
}

variable "subnet_cidr" {
  description = "subnet cidr"
  type = list(string)
}

variable "AZs" {
  description = "List of Azs"
  type = list
}

variable "public_ip" {
  description = "Want to get public ips"
  type = bool
}


variable "name" {
  description = "Name for thew Subnet"
  type = string
}

variable "tags" {
  description = "Tags for the subnet"
  type = any
}

variable "subnet_tag" {
  description = "Subnet tag"
  type = map
}