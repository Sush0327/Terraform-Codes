  resource "aws_subnet" "public_subnet-3" {
   vpc_id = "vpc-08cbdff5ad075469e"
   map_public_ip_on_launch = true
   availability_zone = "us-east-1b"
   cidr_block        = "10.0.208.0/20"

   tags = {
      name = "public-3"
    }
}

  resource "aws_subnet" "public_subnet-2" {
   vpc_id = "vpc-08cbdff5ad075469e"
   map_public_ip_on_launch = true
   availability_zone = "us-east-1b"
   cidr_block        = "10.0.224.0/19"

   tags = {
      name = "public-2"
    }
}


