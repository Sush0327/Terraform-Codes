resource "aws_security_group" "launch-wizard-1-Test" {
  name        = "launch-wizard-1-Test"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-08cbdff5ad075469e"

ingress {
  description = "TLS from vpc"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
 }

ingress {
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
 }

egress {
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks = ["::/0"]
 }

tags = {
  name = "launch-wizard-1-Test"
 }

}
