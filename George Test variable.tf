variable "clouds_string" {
  default = "Azure Aws Gcp"
}
variable "clouds_list" {
  default = ["azure","aws","gcp"]
locals {
  contains_keyword = contains(split(" ", var.clouds_string), "azure")
}
output "contains"{
    value = local.contains_keyword
}
output "string_contains_no_sample" {
  value = local.contains_keyword ? "String contains 'azure'" : "String does not contain 'azure'"
}
