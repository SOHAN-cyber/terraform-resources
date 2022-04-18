locals {
  ports = var.port_number
}

locals {
  ips = var.ingress_whitelist_ip_addr
}

locals {
  eips = var.egress_whitelist_ip_addr
}

resource "aws_security_group" "SG3" {
  name        = "SG1"
  description = "This is security group 1"
  vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
   for_each = local.ports
   content {
      description = "description ${ingress.key}"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
   }
  }

  dynamic "egress" {
     for_each = local.ports
    content {
      description = "description ${egress.key}"
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
   } 
  }
  tags = merge ({
    Name = var.sg1_name
  },
  var.tags
  )
}


resource "aws_security_group" "SG2" {
  name        = "SG2"
  description = "This is security group 1"
  vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
   for_each = local.ips
   content {
      description = "description ${ingress.key}"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
   }
  }

  dynamic "egress" {
     for_each = local.eips
    content {
      description = "description ${egress.key}"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = [egress.value]
   } 
  }
  tags = merge ({
    Name = var.sg2_name
  },
  var.tags
  )
}