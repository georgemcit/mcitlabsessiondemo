locals{ 
  cluster_names=["georgeazureresourcegroup"]
}
resource "azurerm_resource_group" "georgeazureresourcegroup" {
  name     = "George_ibrahim_1980"
  location = "Canada Central"
}
locals{ 
  cluster_names_1=["georgeibrahimazureresourcegroup"]
}
resource "azurerm_resource_group" "georgeibrahimazureresourcegroup" {
  name     = "George_ibrahim_05_1980"
  location = "East US"
}
