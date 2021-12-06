resource "azurerm_virtual_network" "prod" {
  name                = var.prodnetwork_name
  location            = var.prodnetwork_location
  resource_group_name = var.rg_prodname
  address_space       = var.prodaddress_space

  subnet {
    name           = var.prodsubnet_name
    address_prefix = var.prodsubnet_address
  }

}

resource "azurerm_virtual_network" "staging" {
  name                = var.stagingnetwork_name
  location            = var.stagingnetwork_location
  resource_group_name = var.rg_stagingname
  address_space       = var.stagingaddress_space
  
  subnet {
    name           = var.stagingsubnet_name
    address_prefix = var.stagingsubnet_address
  }
}