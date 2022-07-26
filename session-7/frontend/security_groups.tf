# Application load balancer security group

resource "aws_security_group" "app_alb_sg" {
  name        = "${var.env}-app_lb_sg"
  description = "This is a SG for ALB"

  tags = {
    Name = "${var.env}-app-lb-sg"
  }
}
resource "aws_security_group_rule" "alb_ingress_rule" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "TCP"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.app_alb_sg.id
}
resource "aws_security_group_rule" "alb_egress_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.app_alb_sg.id
}

# App security group

resource "aws_security_group" "app_sg" {
  name        = "${var.env}-web-sg"
  description = "This is a SG for EC2"
  tags = {
    Name = "${var.env}-web-sg"
  }
}
resource "aws_security_group_rule" "app_ingress_rule" {
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "TCP"
  source_security_group_id = aws_security_group.app_alb_sg.id
  security_group_id        = aws_security_group.app_sg.id
}
resource "aws_security_group_rule" "app_egress_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.app_sg.id
}