resource "aws_autoscaling_group" "app_asg" {
  name = "${var.env}-web-asg"
  vpc_zone_identifier  = data.aws_subnet_ids.default.ids 
  target_group_arns = [aws_lb_target_group.web_tg.arn] 
  desired_capacity   = 3
  max_size           = 5
  min_size           = 3
  health_check_type = "ELB"
  force_delete         = true

  launch_template {
    id      = aws_launch_template.web_template.id
    version = aws_launch_template.web_template.latest_version
  }

  tag {
    key                 = "Name"
    value               = "${var.env}-app"
    propagate_at_launch = true
  } 