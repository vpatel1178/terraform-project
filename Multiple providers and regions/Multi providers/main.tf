terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }
}

resource "aws_instance" "example" {
  ami = "ami-12345678"
  instance_type = "t2.micro"
  # other configurations
}

resource "azurerm_virtual_machine" "example" {
  name = "example-vm"
  location = "East US"
  resource_group_name = "example-resources"
  vm_size = "Standard_DS1_v2"
  # other configurations
}