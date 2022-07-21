terraform {
  backend "s3" {
    bucket         = "terraform-session-5-remote-backend-bucket"
    key            = "session-7/backend/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-june-2022-state-lock-table"
  }
}