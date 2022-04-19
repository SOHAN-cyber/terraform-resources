variable "vpcid" {
  description = "vpc id for nacl group"
}

variable "nacl_name" {
  description = "NACL Name"
  type = map
}

variable "tags" {
  description = "tag to taken from vpc module"
}

variable "ingress_port_range" {
  description = "ingress port range"
  type = list(number)
}

variable "nacl_egress_rule_no" {
  description = "Egress Rule start From"
  type = number
}

variable "nacl_egress_protocol" {
  description = "egress protocol"
  type = string
}

variable "nacl_egress_action" {
  description = "Default action for egress rule if matches"
  type = string
}

variable "route_cidr" {
  description = "route cidr block for the egress port range"
  type = string
}

variable "nacl_egress_from_port" {
  description = "nacl egress port number"
  type = list(number)
}

variable "nacl_egress_to_port" {
  description = "nacl egress to port"
  type = list(number)
}

variable "nacl_ingress_to_port" {
  description = "nacl ingress to port"
  type = list(number)
}

variable "nacl_ingress_rule_no" {
  description = "Ingress Rule Number to start from"
  type = number
}

variable "nacl_ingress_protocol" {
  description = "nacl ingress protocol"
  type = string
}

variable "nacl_ingress_action" {
  description = "nacl ingress default action"
  type = string
}

variable "nacl_ingress_from_port" {
  description = "nacl ingress port from"
  type = list(number)
}