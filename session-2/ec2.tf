#Every single Terraform Configuration file has a format called .tf

resource "aws_instance" "first_ec2" {
  ami = "ami-098e42ae54c764c35"
  instance_type = "t3.micro"
}

# Syntax is Hashicorp Configuration Language (HCL)

# Terraform has only 2 types blocks.
# 1. Resource = Create and Manage resources
# 2. Data Source

# Each block expects label, Resource block expects 2 labels

# resource = block
# "aws_instance" = first label  = resource type = predefined by Terraform
# "first_ec2"    = second label = logical name or ID = defined by Author
# argument = configurations or properties of your resource

# Nice to have:
# 1. Use _ instead of -
# 2. Use lower cases

# Working Directory is a place where you run Terraform Commands
# Terraform has a plugin based archicture
# Plugin = Feature

# Terraform.tfstate = Backend file
# There are only 2 types of Backend
# - Local Backend = is within the Working Directory
# - Remote Backend = is in the Storage