variable "original_string" {
  default = "GEORGE IBRAHIM"
}
variable "string_list" {
  default = ["GEORGE", "IBRAHIM"]
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
variable "visitcountries" {
  type    = list
  default = ["Dubai", "Syria", "Italy", "France", "Germany"]
}
