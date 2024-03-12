provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
  instance_type = "t2.micro"
  ami = "ami-12345678" # Replace this
  subnet_id = "subnet-12345678" # Replace this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "vedant-remote-backend-example" # Bucket name should be unique
}

resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform-lock-example"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}