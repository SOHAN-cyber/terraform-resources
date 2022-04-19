resource "aws_internet_gateway" "aws_internet_gateway" {
  vpc_id = var.vpc_id

  tags = merge({
    Name = var.igw_name
    },
    var.tags
  )
}