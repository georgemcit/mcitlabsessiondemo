resource "azurerm_resource_group" "azureresourcegroup" {
  name     = "george_ibrahim_1980_01_05"
  location = "Canada Central"
}
resource "azurerm_kubernetes_cluster" "batchabcd" {
  for_each            = {for cluster in local.cluster_names: cluster=>cluster}
  name                = "${var.prefix}cluster"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = var.default_node_pool_name
    node_count = var.default_node_pool__node_count
    vm_size    = var.default_node_pool_vm_size 
  }

  identity {
    type = var.identity
  }

  tags = {
    Environment = var.environment_tag
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "kube1nodepool" {
 for_each               = azurerm_kubernetes_cluster.batchabcd
 name                   = "${each.key}"
 kubernetes_cluster_id  = each.value.id
 vm_size                = var.default_node_pool_vm_size 
 node_count             = var.default_node_pool__node_count

  tags = {
    Environment = var.environment_tag
  }
}
variable "dns_prefix"{
  type=string
}
variable  "default_node_pool_name"{
  type=string
}
variable  "default_node_pool__node_count"{
  type=number
}
variable  "identity"{
  type=string
}
variable  "environment_tag"{
  type=string
}
variable  "default_node_pool_vm_size"{
  type=string
}

