provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias = "us-east-2"
  region = "us-east-2"
}

resource "aws_instance" "example1" {
    ami = "ami-12345678"
    instance_type = "t2.micro"
    provider = "aws.us-east-1"
    # other configurations
}

resource "aws_instance" "example2" {
    ami = "ami-12345678"
    instance_type = "t2.micro"
    provider = "aws.us-east-2"
    # other configurations
}