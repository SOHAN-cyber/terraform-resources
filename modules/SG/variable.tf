variable "port_number" {
  description = "port number for inbound and outbound rule"
  type = list(number)
}

variable "ingress_whitelist_ip_addr" {
  description = "ingress whitelisted ip address"
  type = list(string)
}

variable "egress_whitelist_ip_addr" {
  description = "egress whitelisted ip address"
  type = list(string)
}

variable "vpcid" {
  description = "vpcid to be taken from vpc module"
}

variable "sg1_name" {
  description = "Name for the security group 1"
  type = map
}

variable "tags" {
  description = "tag to be taken from vpc module as well"
}

variable "sg2_name" {
  description = "Name for the security group 2"
  type = map
}