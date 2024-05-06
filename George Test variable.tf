variable "clouds_string" {
  default = "Azure Aws Gcp"
}
variable "clouds_list" {
  default = ["azure","aws","gcp"]
}
locals {
  contains_clous_keyword = contains(split(" ", var.clouds_string), "azure")
}
output "contains_clouds"{
    value = local.contains_keyword
}
output "string_contains_clouds" {
  value = local.contains_keyword ? "String contains 'azure'" : "String does not contain 'azure'"
}
variable "clous_additional_string" {
  default = "Alibaba Ibm"
}
variable "clous_additiona_list" {
  default = ["alibaba","ibm"]
}
