provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "This is the AMI value of instance"
}

variable "instance_type" {
  description = "This is the instance type"
  type = map(string)

  default = {
    "npe" = "t2.micro"
    "uat" = "t2.large"
    "prod" = "t2.xlarge"
  }
}

module "ec2_instance" {
    source = "./modules/ec2-instance"
    ami = var.ami
    instance_type = lookup(var.instance_type,terraform.workspace,"t2.micro") // depends on workspace we select accordingly instance type will change
}
