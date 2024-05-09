#This is an Azure Montreal College Tutorial for Storage Account creation--->Storage Container name Creation--->Storage Blob Creation
locals{
   cluster_list=["CCRF2301_montrealcluster","CCRF2301_torontocluster","CCRF2301_vancouvercluster","CCRF2301_albertacluster"]
}
resource "azurerm_kubernetes_cluster" "simplekubernetescluster" {
  name                = "georgeibrahimcluster"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "CCRF2301"

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
resource "azurerm_kubernetes_cluster" "batchabcd" {
  for_each            = {for cluster in local.cluster_list: cluster=>cluster}
  name                = "${var.prefix}cluster"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "CCRF2301"

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
output "kube_name"{
  value=[for cluster in azurerm_kubernetes_cluster.batchabcd:cluster.name ]
}
variable "identity"{
 type=string
 default="SystemAssigned"
}
output "identity" {
  value = var.identity
}
variable "tags"{
 type=string
 Environment = "Production"
output "tags" {
  value = var.tags
