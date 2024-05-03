variable "original_string" {
  default = "DUBAI SYRIA ITALY FRANCE GERMANY"
}
variable "string_list" {
  default = ["Dubai", "+", "Syria", "+", "Italy", "+", "France", "+", "Germany"]
}
variable "additional_string" {
  default = " I will visit "
}
variable "nospace_string" {
  default = " I love " " Canada "
}
variable "visitcountries"{
    type =list(string)
  default = ["Dubai", "Syria", "Italy", "France", "Germany"]
}
output "visitcountries"{
    value=[for visitcountries in var.visitcountries:visitcountries ]
}
