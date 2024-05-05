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
variable "total_output" {
  type    = list(string)
  default = ["150", "150", "150"]
}

locals {
  incremented_output = [
    for value in var.total_output : tostring(tonumber(value) + 10)
  ]
}
output "incremented_output_show" {
  value=local.incremented_output
}
