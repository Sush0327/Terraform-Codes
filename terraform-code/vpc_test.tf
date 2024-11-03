resource "aws_vpc" "vpc_test" {
  cidr_block       = "10.0.128.0/17"
  instance_tenancy = "default"

  tags = {
     Name = "Vpc_Test"
    }
}
