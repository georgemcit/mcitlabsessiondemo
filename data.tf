data "azurerm_virtual_network" "example" {
  name                = "production"
  resource_group_name = "networking"
}

output "virtual_network_id" {
  value = data.azurerm_virtual_network.example.id
}
