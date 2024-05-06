variable "clouds_list" {
  default = ["azure","aws","gcp"]
}
output "clouds"{
  value=var.clouds_list
}
locals {
  clouds_keyword = clouds(split(" ", var.clouds_list), "azure")
}
output "clouds"{
    value = local.clouds_keyword
}
output "string_clouds" {
  value = local.clouds_keyword ? "String clouds 'azure'" : "String does not contain 'azure'"
