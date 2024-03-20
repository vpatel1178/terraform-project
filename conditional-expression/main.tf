provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

variable "flag" {}

resource "aws_instance" "staging" {
  ami = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  count = var.flag == true ? 1 : 0
}

resource "aws_instance" "production" {
  ami = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  count = var.flag == false ? 3 : 0
}