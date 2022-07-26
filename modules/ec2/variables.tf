variable "ami" {
    type = string
    description = "This is AMI for my EC2 instance"
}

variable "instance_type" {
    type = string
    description = "The size of EC2 instance"
}

variable "env" {
    type = string
    description = "This is an environment"
}

variable "s3_bucket_name" {
    type = string
    description = "this is a bucket name"
}