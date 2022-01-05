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

module "networking-vnet" {
 source = "./modules/networking/vnet"

 prodnetwork_name     = 
 prodnetwork_location = 
 rg_prodname          = module.resource-group.rgprod_name
 prodaddress_space    =  ["/24"] 

 prodsubnet_name    =
 prodsubnet_address = "/24"

 stagingnetwork_name     =
 stagingnetwork_location =
 rg_stagingname          = module.resource-group.rgstaging_name
 stagingaddress_space    = ["/24"]
 
 stagingsubnet_name    =
 stagingsubnet_address = "/24"
}