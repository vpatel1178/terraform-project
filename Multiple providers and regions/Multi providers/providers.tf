provider "aws" {
  region = "us-east-1"
  access_key = "your_aws_access_key"
  secret_key = "your_aws_secret_key"
}

provider "azurerm" {
  features {}
  subscription_id = "your-azure-subscription-id"
  client_id = "your-azure-client-id"
  client_secret = "your-azure-client-secret"
  tenant_id = "your-azure-tenant-id"
}