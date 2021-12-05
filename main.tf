# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "resource-group" {
 source = "./modules/resource-group"
}

module "storage-account" {
 source = "./modules/storage-account"
 
 resource_group_name = module.resource-group.rgprod_name
}
