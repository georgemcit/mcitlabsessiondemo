variable "resource_group"{
    type=string
    default="azurerm_resource_group" 
}
variable "name_resource_group"{
    type=string
    default="george_ibrahim_resource_group"
}
variable "location_resource_group"{
    type=string
    default="Canada Central"
}
output "resource_group" {
  value = var.resource_group
}
output "resource_name" {
  value = var.name_resource_group
}
output "resource_location" {
  value = var.location_resource_group
}
locals{ 
  cluster_names=["george06","george006","george0006","george00006","george0000006"]
}
resource "azurerm_kubernetes_cluster" "batchabcd" {
  for_each            = {for cluster in local.cluster_names: cluster=>cluster}
  name                = "${var.prefix}cluster"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

