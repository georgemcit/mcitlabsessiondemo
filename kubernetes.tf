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

