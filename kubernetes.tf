locals{ 
  cluster_names=["georgeazureresourcegroup"]
}
resource "azurerm_resource_group" "georgeazureresourcegroup" {
  name     = "George_ibrahim_1980"
  location = "Canada Central"
}
