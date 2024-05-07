locals{ 
  cluster_names=["georgeazureresourcegroup"]
}
resource "azurerm_resource_group" "georgeazureresourcegroup" {
  name     = "George_ibrahim_1980"
  location = "Canada Central"
}
provider "azurerm"{
  features{}
  skip_provider_registration="true"
  
  resource =var.azurerm_resource_group
  name =var.George_ibrahim_05_1980
  location =var.UAE North 
}
variable "resource"{
  type=string
}
variable "resource"{
  type=string
}
variable "name"{
  type=string
}
variable "location"{
  type=string
}
