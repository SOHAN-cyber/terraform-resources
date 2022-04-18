resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.main.id
    count = length(var.subnet_cidr)
    cidr_block = element(var.subnet_cidr, count.index % length(var.subnet_cidr))
    availability_zone = element(var.AZs, count.index % length(var.AZs))
    map_public_ip_on_launch =  var.public_ip
    
    tags = merge ({
        Name = format("%s-%d", var.name,count.index+1)
    },
    var.tags,
    var.subnet_tag
    )
}