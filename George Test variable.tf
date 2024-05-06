variable "clouds_string" {
  default = "Azure Aws Gcp"
}
variable "clouds_list" {
  default = ["azure","aws","gcp"]
}
locals {
  cluds_keyword = clouds(split(" ", var.clouds_string), "azure")
}
output "clouds"{
    value = local.clouds_keyword
}
