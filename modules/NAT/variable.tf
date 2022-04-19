variable "vpc-eip" {
  description = "eip address"
  type = string
}

variable "tags" {
  type = any
}


variable "nat_gate_name" {
  description = "NAT GATEWAY NAME"
  type = string
}

variable "subnetid" {
  description = "subnet id on which nat gateway will be created"
}