resource "aws_autoscaling_group" "app_asg" {
  name                = "${var.env}-web-asg"
  vpc_zone_identifier = data.aws_subnet_ids.default.ids
  target_group_arns   = [aws_lb_target_group.app_tg.arn]
  desired_capacity    = 3
  max_size            = 5
  min_size            = 2
  health_check_type   = "ELB"
  force_delete        = true

  launch_template {
    id      = aws_launch_template.app_template.id
    version = aws_launch_template.app_template.latest_version
  }

  tag {
    key                 = "Name"
    value               = "${var.env}-app"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_attachment" "web_alb_asg_attachment" {
  alb_target_group_arn   = aws_lb_target_group.app_tg.arn
  autoscaling_group_name = aws_autoscaling_group.app_asg.id
}