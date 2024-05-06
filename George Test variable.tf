variable "string_list" {
  default = ["azure","aws","gcp"]
}
output "clouds"{
  value=var.string_list
}
