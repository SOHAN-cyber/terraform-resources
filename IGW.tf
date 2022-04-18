resource "aws_internet_gateway" "aws_internet_gateway" {
  vpc_id = aws_vpc.main.id
  
   tags = merge ({
    Name = var.igw_name
  },
  var.tags
  )
} 
