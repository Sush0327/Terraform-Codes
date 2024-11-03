 resource "aws_internet_gateway" "gw" {
    vpc_id = "vpc-08cbdff5ad075469e"
    tags = {
      name = "Gateway-Test"
     }
}
