 resource "aws_route_table" "myroute" {
  vpc_id = "vpc-08cbdff5ad075469e"
  route {
       cidr_block = "0.0.0.0/0"
       gateway_id = "igw-0fd4e0376fdd5910a"
     }
   tags = {
      name = "myroute-test"
    }
}
