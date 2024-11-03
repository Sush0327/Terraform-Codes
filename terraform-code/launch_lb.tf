resource "aws_lb" "my_load_balance" {
 name               = "my-load-balancer" 
 internal           = false
 load_balancer_type = "application"
 security_groups    = ["sg-07a0238711832ce20"]
 subnets            = ["subnet-0f1515c49c7aea048" , "subnet-059d3d4827a8bcf54"]

enable_deletion_protection = false

  tags = {
    Name = "my-load-balancer"
  }
}

resource "aws_lb_target_group" "my_target" {
 name	  = "mytarget"
 port	  =  80
protocol  = "HTTP"
vpc_id    = "vpc-08cbdff5ad075469e"
 
    health_check {
    path                = "/health"
    interval            = 30
    timeout             = 5
    healthy_threshold  = 2
    unhealthy_threshold = 2
    matcher             = "200"
  }
}
