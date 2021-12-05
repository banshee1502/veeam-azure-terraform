provider "azurerm" {
  
  features {}
  
}

resource "azurerm_storage_account" "backups" {
  name                     = var.storageaccountname
  resource_group_name      = module.resource-group.rgprod_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = var.account_replication_type

blob_properties {
  delete_retention_policy {
    days = var.delete_retention_policy
   }
  }

  tags = {
    costcenter = "backupstorage"
  }
}