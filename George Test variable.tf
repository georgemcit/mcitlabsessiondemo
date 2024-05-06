variable "clouds_list" {
  default = ["azure","aws","gcp"]
}
output "clouds"{
  value=var.clouds_list
}
locals {
  clouds_list_keyword = clouds_list_keyword(split(" ", var.clouds_list), "azure")
}
output "clouds_listd_output"{
    value=local.clouds_list_keyword
}
