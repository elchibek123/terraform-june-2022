variable "ami" {
    type = string
    description = "This is a variable for Amazon Machine Image"
    default = "ami-098e42ae54c764c35"
}

variable "instance_type" {
    type = string
    description = "This is an Instance type for EC2"
    default = "t2.micro"
}

variable "key_name" {
    type = string
    description = "This is a Key Pair for EC2"
    default = "MyMacKey"
}

variable "env" {
    type = string
    description = "This variable represents the environment"
    default = "Dev"
}
# Data Type:
# 1. string
# 2. number
# 3. boolean