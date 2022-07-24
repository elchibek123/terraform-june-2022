# Application Load Balancer

resource "aws_lb" "app_lb" {
  name               = "web-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app_alb_sg.id]

  enable_deletion_protection = true

  tags = {
    Name  = "${var.env}-web_lb"
  }
}

# Target Group

resource "aws_lb_target_group" "app_tg" {
  name     = "web-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.default.id
}