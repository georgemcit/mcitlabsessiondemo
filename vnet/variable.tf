variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy the resources"
  type        = string
}
variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "The address space ip"
  type        = list
}
variable "subnet_name" {
  description = "The name of the subnet name"
  type        = string
}

variable "address_prefixes" {
  description = "The address prefixes ip"
  type        = list
}
