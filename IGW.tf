resource "aws_internet_gateway" "aws_internet_gateway" {
  vpc_id = aws_vpc.main.id
  tags = {
    "Name" = format("%s-igw", var.name)
    }
}
