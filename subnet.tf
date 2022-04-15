resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.main.id
    count = length(var.public_subnet_cidr)
    cidr_block = element(var.public_subnet_cidr, count.index % length(var.public_subnet_cidr))
    availability_zone = element(var.AZs, count.index % length(var.AZs))
    map_public_ip_on_launch =  var.public_ip
    
    tags = {
        Name = format("%s-subnet-%d", var.name,count.index+1)
    }
}

resource "aws_subnet" "private-subnet" {
    vpc_id = aws_vpc.main.id
    count = length(var.private_subnet_cidr)
    cidr_block = element(var.private_subnet_cidr, count.index % length(var.private_subnet_cidr))
    availability_zone = element(var.AZs, count.index % length(var.AZs))
    
    tags = {
        Name = format("%s-subnet-%d", var.name,count.index+3)
    }
}

resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.main.id
    count = length(var.subnet_cidr)
    cidr_block = element(var.subnet_cidr, count.index % length(var.subnet_cidr))
    availability_zone = element(var.AZs, count.index % length(var.AZs))
    map_public_ip_on_launch =  var.public_ip
    
    tags = {
        Name = format("%s-subnet-%d", var.name,count.index+10)
    }
}