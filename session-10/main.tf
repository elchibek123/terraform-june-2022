# Using Github as A remote module

module "s3" {
  source  = "github.com/aKumoSolutions/terraform-june-2022/modules/s3"
  env     = "dev"
  my_name = "elchibek"
}

module "ec2" {
  source         = "github.com/elchibek123/terraform-june-2022/modules/ec2"
  ami            = "ami-098e42ae54c764c35"
  instance_type  = "t2.micro"
  env            = "dev"
  s3_bucket_name = module.s3.bucket_name
}

# Using Terraform Registry as A remote module

# module "vpc" {
#   source = "terraform-aws-modules/vpc/aws"

#   name = "my-vpc"
#   cidr = "10.0.0.0/16"

#   azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
#   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#   public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

#   enable_nat_gateway = true
#   enable_vpn_gateway = true

#   tags = {
#     Terraform = "true"
#     Environment = "dev"
#   }
# }