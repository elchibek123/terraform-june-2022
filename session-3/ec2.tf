resource "aws_instance" "main" {
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.main.id]
    key_name = var.key_name
    tags = {
        Name = var.env
    }
}

# 1. Highlight + Command/Control + / = Comment && Uncoment
# 2. Command/Control + F = Find String
# 3. Highlight + Command/Control + d = Select the same word

# Reference to Resource:
# 1. aws_security_group = first label
# 2. main = second label
# 3. id = attribute

# What goes inside "" ?
# - String
# - Hard Coded Value
# - Static Value

# Reference = Dynamic
# In Terraform, Dynamic Vaules do not use ""

# Reference to input Variables:
# var.name