terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = 
}

module "resource-group" {
 source = "./modules/resource-group"

 rgprod_name    =  
 rgstaging_name =
 rg_location    =
}

module "storage-account" {
 source = "./modules/storage-account"
 
 resource_group_name      = module.resource-group.rgprod_name
 storageaccountname       = 
 location                 =
 account_replication_type =
 delete_retention_policy  =
}
