resource "aws_eip" "my_eip" {
  vpc = true
  tags = {
    "Name" = format("%s-eip", var.name)
  }
}