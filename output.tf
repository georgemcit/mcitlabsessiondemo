resource "azurerm_kubernetes_cluster" "george1" {
  for_each            = {for cluster in local.cluster_list: cluster=>cluster}
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
variable "dns_prefix"{
  type=string
}
variable  "default_node_pool_name"{
  type=string
}
variable  "default_node_pool_count"{
  type=number
}
variable  "identity1"{
  type=string
}
variable  "environment_tag"{
  type=string
}
variable  "default_node_pool_vm_size"{
  type=number
}

