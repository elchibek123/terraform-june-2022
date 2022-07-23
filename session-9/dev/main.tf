module "ec2" {
  source        = "../../modules/ec2" # Local module needs an absolute path to the Child Module
  ami           = "ami-098e42ae54c764c35"
  instance_type = "t2.micro"
  env           = "dev"
}