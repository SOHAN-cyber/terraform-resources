resource "aws_security_group" "SG1" {
  name = format("%s- SG", var.name)
  description = var.SG_DESCRIPTION
  vpc_id = aws_vpc.main.id
  tags = {
    "Name" = format("%s-SG", var.name)
  }
}

resource "aws_security_group_rule" "sg_egress" {
  count = length(var.egress_to_port)
  type = "egress"
  from_port = element(var.egress_from_port,count.index)
  to_port = element(var.egress_to_port,count.index)
  protocol = var.protocol_type
  cidr_blocks = [var.cidr_block]
  security_group_id = aws_security_group.SG1.id
}

resource "aws_security_group_rule" "ingress" {
   count = length(var.ingress_to_port)
  type = "ingress"
  from_port = element(var.ingress_from_port,count.index)
  to_port = element(var.ingress_to_port,count.index)
  protocol = var.protocol_type
  cidr_blocks = [var.cidr_block]
  security_group_id = aws_security_group.SG1.id 
}


 resource "aws_security_group" "ssh_sg" {
   name = format("%s-ssh-SG", var.name)
   description = var.SSH_Description
   vpc_id = aws_vpc.main.id
   ingress {
       from_port = 22
       to_port = 22
       protocol = var.nacl_egress_protocol
       cidr_blocks = var.whitelist_ips
   }
   egress {
       from_port = 22
       to_port = 22
       protocol = var.nacl_egress_protocol
       cidr_blocks = [var.instance_public_ip]
   }
       tags  = {
           Name = format("%s-SSH-SG", var.name)
       }
 }