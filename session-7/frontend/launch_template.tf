resource "aws_launch_template" "app_template" {
  name_prefix            = "${var.env}-web-template"
  image_id               = data.aws_ami.amazon_linux2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.app_sg.id]
  lifecycle {
    create_before_destroy = true
  }
  user_data = base64encode(data.template_file.user_data.rendered)
}