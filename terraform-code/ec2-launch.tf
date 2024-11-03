resource "aws_instance" "terraform-test-1" {
 ami                         = "ami-06b21ccaeff8cd686"
 instance_type               = "t2.micro"
 availability_zone           = "us-east-1a"
 key_name                    = "Ec2-TF"
 vpc_security_group_ids      = ["sg-07a0238711832ce20"]
 subnet_id   		     = "subnet-0caa5c238db1fc460"
 associate_public_ip_address = true
 user_data		     = "${file("userdata.sh")}"

 tags = {
   name = "terraform-test-1"
  }
}

resource "aws_instance" "terraform-test-2" {
 ami                         = "ami-06b21ccaeff8cd686"
 instance_type               = "t2.micro"
 availability_zone           = "us-east-1a"
 key_name                    = "Ec2-TF"
 vpc_security_group_ids      = ["sg-07a0238711832ce20"]
 subnet_id                   = "subnet-0caa5c238db1fc460"
 associate_public_ip_address = true
 user_data 		     = "${file("userdata.sh")}"

 tags = {
   name = "terraform-test-2"
  }
}
