resource "azurerm_network_security_group" "web_nsg" {
  name                = var.azurerm_network_security_group_web
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_group" "app_nsg" {
  name                = var.azurerm_network_security_group_app
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_group" "db_nsg" {
  name                = var.azurerm_network_security_group_db
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
variable "azurerm_network_security_group_web"{
  type=string
}
variable "azurerm_network_security_group_app"{
  type=string
}
variable "azurerm_network_security_group_db"{
  type=string
}
