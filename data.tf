

resource "azurerm_resource_group" "networkingt" {
  location = var.location
  name     = "example-lb-${random_id.rg_name.hex}"
}


module "network" {
  source                  = "Azure/network/azurerm"
  version                 = "4.2.0"
  resource_group_name     = azurerm_resource_group.test.name
  address_space           = "10.0.0.0/16"
  resource_group_location = var.location
  subnet_prefixes         = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  subnet_names            = ["subnet1", "subnet2", "subnet3"]

  tags = {
    environment = "dev"
    costcenter  = "it"
  }

  depends_on = [azurerm_resource_group.networking]
}
