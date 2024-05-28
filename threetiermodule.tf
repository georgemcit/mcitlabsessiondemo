module "three_tier_app" {
  source              = "./modulethreetierapp/"
  resource_group_name = "mcitthreetiermodule"
  location            = "West Europe"
  admin_username      = var.administrator_login
  admin_password      = var.administrator_login_password
  db_admin_username   = var.db_admin_username
  db_admin_password   = var.db_admin_password
}
variable "administrator_login"{
  type=string
}
variable "administrator_login_password"{
  type=string
}
variable "db_admin_username"{
  type=string
}
variable "db_admin_password"{
  type=string
}
output "admin_username" {
  sensitive = true
  value = var.administrator_login
}
output "admin_password" {
  sensitive = true
  value = var.administrator_login_password
}
output "db_admin_username" {
  sensitive = true
  value = var.db_admin_username
}
output "db_admin_password" {
  sensitive = true
  value = var.db_admin_password
}
variable "admin_password_vm"{
  type=string
}
output "admin_password_vm" {
  sensitive = true
  value = var.admin_password_vm
}
variable "admin_password_vm"{
  type=string
}
output "admin_username_vm" {
  sensitive = true
  value = var.admin_username_vm
}
