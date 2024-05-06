variable "clouds_list" {
  default = ["azure","aws","gcp"]
}
output "clouds"{
  value=var.clouds_list
}
locals {
  clouds_keyword = clouds(split(" ", var.clouds_list), "azure")
}
output "clouds_listd_output"{
    value=local.contains_keyword
}
