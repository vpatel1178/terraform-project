terraform {
  backend "s3" {
    bucket = "vedant-remote-backend-example"
    key = "example/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform-lock-example"
  }
}