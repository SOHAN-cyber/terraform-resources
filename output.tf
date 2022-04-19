output "aws_region_for_resources" {
  description = "AWS Region in Which Resources will be created"
  value       = var.region
}

output "Region_AZs" {
  description = "Azs in which Subnet Will be created"
  value       = module.subnet.AZs
}

output "tag" {
  description = "output of tag"
  value       = module.vpc.aws_name
}

output "vpcid" {
  description = "vpc id"
  value       = module.vpc.VPC_ID
}

output "vpc_flow_logs" {
  description = "vpc flow log id"
  value       = module.vpc.aws_flow_log
}

output "IGW_ID" {
  description = "igw id for vpc"
  value       = module.igw.IGW_ID
}

output "IGW_NAME" {
  description = "tag of igw"
  value       = module.igw.IGW_NAME
}

output "Subnet_id" {
  description = "Subnet Id for created Subnet"
  value       = module.subnet.SUBNET_ID
}

output "Subnet_tag" {
  description = "Subnet Tags"
  value       = module.subnet.subnet_tags
}

output "Subnet_name" {
  description = "Subnet Name"
  value       = module.subnet.subnet_name
}

output "route-table-id-pt" {
  description = "Route table Id for private rt"
  value       = module.route.pt-route-id
}

output "route-table-id-pb" {
  description = "Route table Id for private rt"
  value       = module.route.pb-route-id
}

output "pt-route-subnet-assciated" {
  description = "Subnet Associated with private route table"
  value       = module.route.pt-route-subnet-id
}

output "pb-route-subnet-associated" {
  description = "Subnet Associated with public subnet"
  value       = module.route.pb-route-subnet-id
}

output "Security-group-SSH" {
  description = "Security group id for SG1"
  value       = module.security_group.SG2_ID
}

output "Security-group-Instance" {
  description = "Security group id for SG3"
  value       = module.security_group.SG3_ID
}

output "ingress_open_port_instance" {
  description = "Port range that is opened for instance Security Group"
  value       = module.security_group.open_ports_SG2
}

output "nat_eip_public_address" {
  description = "EIP that is associated with Nat Gateway"
  value       = module.nat.vpc_eip
}
output "nat_gateway_id" {
  description = "Nat gateway that is created"
  value       = module.nat.aws_nat_gateway
}

output "Nat_Gateway_Subnet" {
  description = "Subnet in which NateGateway is created"
  value       = module.nat.subnet_id_nat
}

output "eip_id" {
  description = "EIP Id "
  value       = module.nat.eip_id
}

output "nacl_id" {
  description = "NACL ID"
  value       = module.nacl.nacl_id
}

output "nacl_tag" {
  description = "Tag to the Nacl Resources"
  value       = module.nacl.nacl_tag
}