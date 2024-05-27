resource "azurerm_subnet" "web" {
  name                 = var.azurerm_subnet_web_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.address_prefixes_web
}

resource "azurerm_subnet" "app" {
  name                 = var.azurerm_subnet_app_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.address_prefixes_app
}
variable "azurerm_subnet_web_name"{
  type=string
}
variable  "address_prefixes_web"{
  type =list
}
variable "azurerm_subnet_app_name"{
  type=string
}
variable "address_prefixes_app"{
  type=string
}
