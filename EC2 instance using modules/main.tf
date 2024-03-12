provider "aws" {
  region = "us-east-1"
}

module "ec2-instance" {
    source = "./modules/ec2-instance"
    ami_value = "ami-12345678" # replace this
    instance_type_value = "t2.micro"
    subnet_id_value = "subnet-12345678" # replace this
}