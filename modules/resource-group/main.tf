resource "azurerm_resource_group" "prod" {
  name     = var.rgprod_name
  location = var.rg_location
}

resource "azurerm_resource_group" "staging" {
  name     = var.rgstaging_name
  location = var.rg_location
}
