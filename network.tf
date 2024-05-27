resource "azurerm_resource_group" "rg" {
  name     = "Mcitterraformrg"
  location = "Canada Central"
}

# Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  address_space       = var.address_space
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
