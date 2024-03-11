provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-0c55b159cbfafe1f0" # replace this
  instance_type = "t2.micro"
  subnet_id = "subnet-019ea91ed9b5252e7" # replace this
  key_name = "aws_login_key" # replace this
}