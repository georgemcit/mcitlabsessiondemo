variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "prefix"{
 type=string
 default="samiislam"
}
variable "firstname"{
 type=string
 default="sami"
}
variable "lastname"{
 type=string
 default="islam"
}
variable "account_tier"{
  type=string
  default="Standard"
}
variable "access_tier"{
  type=string
  default="Cool"
}
variable "account_replication_type"{
  type=string
  default="GRS"
}
variable "cross_tenant_replication_enabled"{
 type=bool
 default=false
}

variable "environment"{
 type=string
 default="staging"
}
variable "summersports"{
    type =list(string)
    default=["soccer","basketball","badminton","tabletennis"]
}
output "summersportslist"{
    value=[for summersport in var.summersports:summersport ]
}
variable "favouritefood"{
    type =list(string)
    default=["tabola","mlokia","shakrea","shawrma","falafel"]
}
output "favouritefood"{
    value=[for favouritefood in var.favouritefood:favouritefood ]
}
variable "original_string" {
  default = "GEORGE IBRAHIM"
}
output "string_length" {
  value = length(var.original_string)
}
output "uppercase_string" {
  value = upper(var.original_string)
}
output "lowercase_string" {
  value = lower(var.original_string)
}

output "replaced_string" {
  value = replace(var.original_string, "IBRAHIM", "GEORGE")
}
variable "string_list" {
  default = ["GEORGE", "IBRAHIM"]
}

output "join_name" {
  value = join(" ", var.string_list)
}
variable "additional_string" {
  default = " from syria"
}
output "concatenated_string" {
  value = "${var.original_string}${var.additional_string}"
}
output "substring_example" {
  value = substr(var.original_string, 3, -1)
}
variable "whitespace_string" {
  default = "  Today is Monady "
}

output "trimmed_string" {
  value = trim(var.whitespace_string," ")
}
output "replaced_string" {
  value = replace(var.whitespace_string, " ", "")
}
