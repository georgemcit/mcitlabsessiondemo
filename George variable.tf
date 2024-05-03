variable "original_string" {
  default = "DUBAI SYRIA ITALY FRANCE GERMANY"
}
variable "string_list" {
  default = ["Dubai", "+", "Syria", "+", "Italy", "+", "France", "+", "Germany"]
}
variable "additional_string" {
  default = " I will visit "
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
  default = "Canada "
}

