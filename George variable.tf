variable "azurerm_resource_group_string" {
      name = "George_ibrahim_05_1980"
  location = "East US"
}
output "azurerm_resource_group_string" {
  value = var."r_g_string"
}
variable "original_string" {
  default = "DUBAI SYRIA ITALY FRANCE GERMANY"
}
variable "string_list" {
  default = ["Dubai", "Syria", "Italy", "France", "Germany"]
}
variable "additional_string" {
  default = "I will visit "
}
variable "visitcountries"{
    type =list(string)
  default = ["Dubai", "Syria", "Italy", "France", "Germany"]
}
variable "love_string" {
  default = "I love" 
}
variable "space_string" {
  default = " " 
}
variable "canada_string" {
  default = "Canada"
}
variable "george_string" {
  default = "GEORGE IBRAHIM"
}
variable "george_list" {
  default = ["GEORGE", "IBRAHIM"]
}
variable "additional1_string" {
  default = " from syria"
}

