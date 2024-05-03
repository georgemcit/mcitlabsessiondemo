variable "original_string" {
   default = ["DUBAI", "CANADA", "ITALY", "FRANCE", "GERMANY"]
}
variable "string_list" {
  default = ["Dubai", "Syria", "Italy", "France", "Germany"]
}
variable "additional_string" {
  default = " from syria"
}
variable "nospace_string" {
  default = "  Today is Monady "
}
variable "visitcountries"{
    type =list(string)
  default = ["Dubai", "Syria", "Italy", "France", "Germany"]
}
output "visitcountries"{
    value=[for visitcountries in var.visitcountries:visitcountries ]
}
