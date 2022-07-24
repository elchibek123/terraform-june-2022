

# App security group

resource "aws_security_group" "app_sg" {
  name        = "${var.env}-web-sg"
  description = "Allow http inbound traffic from alb"
  tags = {
    Name  = "${var.env}-web-sg"
  }
}
resource "aws_security_group_rule" "app_ingress_rule" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = aws_security_group.app_alb_sg.id
  security_group_id = aws_security_group.app_sg.id
}
resource "aws_security_group_rule" "app_egress_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.app_sg.id
}

# Application load balancer security group

resource "aws_security_group" "app_alb_sg" {
  name        = "${var.env}-app_lb_sg"
  description = "Allow http and https inbound traffic"
  
  tags = {
    Name  = "${var.env}-app-lb-sg"
  }
}
resource "aws_security_group_rule" "app_ingress_rule" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.app_alb_sg.id
} 
resource "aws_security_group_rule" "webserver_lb_sg_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.app_alb_sg.id
}