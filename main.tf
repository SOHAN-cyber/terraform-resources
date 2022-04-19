module "vpc" {
  source               = "./modules/VPC"
  vpc_cidr_blocks      = var.vpc_cidr
  instance_tenancy     = var.instance_tenancy
  enable_dns_hostnames = var.dns_hostnames
  enable_dns_support   = var.dns_support
  vpc_name             = var.vpc_name
  tag                  = var.tag
  enable_vpc_flow_logs = var.enable_vpc_flow_logs
  log_destination      = var.S3_bucket_arn
  traffic_type         = var.capturing_logs_traffic
  file_format_type     = var.file_format_logs
  per_hour_partition   = var.enable_per_hour_logs_partition
  flow_logs            = var.tag_flow_logs
}


module "igw" {
  source   = "./modules/IGW"
  vpc_id   = module.vpc.VPC_ID
  igw_name = var.igw_name
  tags     = module.vpc.aws_name
}



module "subnet" {
  source      = "./modules/SUBNET"
  vpcid       = module.vpc.VPC_ID
  subnet_cidr = var.subnet_cidr_block
  AZs         = var.AZs
  public_ip   = var.map_public_ip_on_launch
  name        = var.subnet_name
  tags        = module.vpc.aws_name
  subnet_tag  = var.subnet_tag
}


module "nat" {
  source        = "./modules/NAT"
  vpc-eip       = var.eip
  tags          = module.vpc.aws_name
  subnetid      = module.subnet.SUBNET_ID[var.nat_subnet]
  nat_gate_name = var.nate_name
}

module "route" {
  source               = "./modules/ROUTE"
  vpcid                = module.vpc.VPC_ID
  route_cidr           = var.default_route
  nat_gateway          = module.nat.aws_nat_gateway
  private_route_name   = var.private_route_name
  public_route_name    = var.public_route_name
  private_route_tag    = var.private_route_tag
  tags                 = module.vpc.aws_name
  internet_gateway     = module.igw.IGW_ID
  public_route_tag     = var.public_route_tag
  private_subnet_count = var.private_subnet_count
  public_subnet_count  = var.public_subnet_count
  subnetid1            = module.subnet.SUBNET_ID
  subnetid2            = module.subnet.SUBNET_ID

}

module "nacl" {
  source                 = "./modules/NACL"
  vpcid                  = module.vpc.VPC_ID
  nacl_name              = var.nacl_name
  tags                   = module.vpc.aws_name
  ingress_port_range     = var.ingress_port
  nacl_egress_rule_no    = var.egress_rule_no
  nacl_egress_protocol   = var.nacl_egress_proto
  nacl_egress_action     = var.nacl_egress_action
  route_cidr             = var.default_cidr
  nacl_egress_from_port  = var.nacl_egress_from_port
  nacl_egress_to_port    = var.nacl_egress_to_port
  nacl_ingress_rule_no   = var.nacl_ingress_rule
  nacl_ingress_protocol  = var.nacl_ing_proto
  nacl_ingress_action    = var.nacl_ing_action
  nacl_ingress_from_port = var.nacl_ingress_from_port
  nacl_ingress_to_port   = var.nacl_ingress_to_port
}

module "security_group" {
  source                    = "./modules/SG"
  port_number               = var.security_group_port_range
  ingress_whitelist_ip_addr = var.ingress_whitelist_ip_addr
  egress_whitelist_ip_addr  = var.egress_whitelist_ip_addr
  vpcid                     = module.vpc.VPC_ID
  sg1_name                  = var.sg1_name
  tags                      = module.vpc.aws_name
  sg2_name                  = var.sg2_name
}