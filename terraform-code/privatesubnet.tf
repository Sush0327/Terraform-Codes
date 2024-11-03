  resource "aws_subnet" "private_subnet-4" {
   vpc_id		   = "vpc-08cbdff5ad075469e"
   map_public_ip_on_launch = true
   availability_zone 	   = "us-east-1b"
   cidr_block              = "10.0.128.0/18"

   tags = {
      name = "pravite-4"
    }
}

  resource "aws_subnet" "public_subnet-5" {
   vpc_id     		   = "vpc-08cbdff5ad075469e"
   map_public_ip_on_launch = true
   availability_zone       = "us-east-1b"
   cidr_block              = "10.0.192.0/21"

   tags = {
      name = "pravite-5"
    }
}

