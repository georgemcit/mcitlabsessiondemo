locals{ 
  cluster_names=["georgeazureresourcegroup"]
}
resource "azurerm_resource_group" "georgeazureresourcegroup" {
  resource =var.azurerm_resource_group
  name =var.George_ibrahim_05_1980
  location =var.UAE North 
}
variable "resource"{
  type=string+
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
