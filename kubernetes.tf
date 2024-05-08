variable "resource_group"{
    type=string
    default="azurerm_resource_group" "azureresourcegroup"
}
variable "name_resource_group"{
    type=string
    default="george_ibrahim_resource_group"
}
variable "location_resource_group"{
    type=string
    default="Canada Central"
}
output "resource" {
  value = var.resource_group
}
output "name" {
  value = var.name_resource_group
}
output "location" {
  value = var.location_resource_group
}
locals{ 
  cluster_names=["k8batcha06","k9batcha06","k10batcha06","k11batcha06","k12batcha06"]
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
output "id" {
  value = [
    for cluster in azurerm_kubernetes_cluster.batchabcd: cluster.id
  ]
}
