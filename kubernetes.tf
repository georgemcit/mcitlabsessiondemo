variable "resource_group"{
    type=string
    default="azurerm_resource_group1" 
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
  cluster_names=["george01","george02","george03","george04","george05"]
}
resource "azurerm_resource_group" "azureresourcegroup" {
  name     = "george_ibrahim_1980_01_05"
  location = "Canada Central"
}
resource "azurerm_kubernetes_cluster" "simplekubernetescluster1" {
  name                = "george1"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "exampleaks1"
}
resource "azurerm_kubernetes_cluster" "simplekubernetescluster2" {
  name                = "george2"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "exampleaks2"
}
resource "azurerm_kubernetes_cluster" "simplekubernetescluster3" {
  name                = "george3"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "exampleaks1"
}
resource "azurerm_kubernetes_cluster" "simplekubernetescluster4" {
  name                = "george4"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "exampleaks1"
}
resource "azurerm_kubernetes_cluster" "simplekubernetescluster5" {
  name                = "george5"
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


