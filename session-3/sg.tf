resource "aws_security_group" "main" {
  name        = "SecurityGroup"
  description = "This is a sg for my EC2"
}

# Argument = Terraform defines, Unique
# Value = Author defines, Does not need to be unique