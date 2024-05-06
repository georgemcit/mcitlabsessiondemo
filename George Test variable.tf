variable "clouds_string" {
  default = "Azure Aws Gcp Alibaba Ibm"
}
variable "clouds_list" {
  default = ["azure","aws","gcp","alibaba","ibm"]
}
output "uppercase_string2" {
  value = upper(var.clouds_string)
}
output "lowercase_string2" {
  value = lower(var.clouds_string)
}

output "clouds_string_string" {
  value = var.clouds_string
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
variable "cloud_owners_string" {
  default = "Alibaba Ibm"
}
variable "cloud_owners_list" {
  default = ["Microsoft", "Amazon", "Google"]
}

