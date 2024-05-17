/*
resource "azurerm_kubernetes_cluster" "george1" {
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

variable "dns_prefix"{
  type=string
  default="george"
}
variable  "default_node_pool_name"{
  type=string
  default="ibrahim"
}
variable  "default_node_pool__node_count"{
  type=number
  default=1
}
variable  "identity"{
  type=string
  default="SystemAssigned"
}
variable  "environment_tag"{
  type=string
  default="Production"
}
variable  "default_node_pool_vm_size"{
  type=string
  default="Standard_D2_v2"
}
*/
variable "custom_rules1_name"{
  type=string
  default="Rule1"
}
variable "custom_rules2_name"{
  type=string
  default="Rule2"
}
variable "custom_rules_1_rule_type"{
  type=string
  default="MatchRule"
}
variable "custom_rules_2_rule_type"{
  type=string
  default="MatchRule"
}
variable "custom_rules1_priority"{
  type=number
  default="1"
}
variable "custom_rules2_priority"{
  type=number
  default="2"
}
