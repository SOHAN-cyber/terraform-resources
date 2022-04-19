variable "vpcid" {
  description = "vpc id"
}

variable "route_cidr" {
  description = "default route cidr"
  type = string
}

variable "nat_gateway" {
 description = "Nat Gateway Id" 
}


variable "private_route_name" {
  description = "name for the vpc route table"
  type = string
}

variable "public_route_name" {
  description = "name for the vpc route table"
  type = string
}

variable "private_route_tag" {
  description = "private subnet tag"
  type = map
}

variable "tags" {
  description = "Tag that will we use from vpc module"
}

variable "private_subnet_count" {
  description = "Number of subnet you want to create"
  type = number
}

variable "public_subnet_count" {
  description = "Number of subnet you want to create"
  type = number
}

variable "internet_gateway" {
  description = "Internet Gateway Id"
}

variable "public_route_tag" {
  description = "Name of public subnet"
  type = map
}

variable "subnetid2" {
description = "Subnet id that we will take from subnet section"
}

variable "subnetid1" {
description = "Subnet id that we will take from subnet section"
}