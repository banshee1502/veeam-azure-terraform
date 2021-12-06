provider "azurerm" {
  
  features {}
  
}

resource "azurerm_storage_account" "backups" {
  name                     = var.storageaccountname
  resource_group_name      = var.resource_group_name
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