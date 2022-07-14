variable "instance_type" {
  type        = string
  description = "This is a size of EC2"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "This is my Public Key"
  default     = "MyMacKey"
}

variable "env" {
  type        = string
  description = "This variable represents environment"
  default     = "dev"
}