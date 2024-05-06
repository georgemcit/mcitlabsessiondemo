variable "clouds_list" {
  default = ["azure","aws","gcp"]
}
output "clouds"{
  value=var.clouds_list
}
