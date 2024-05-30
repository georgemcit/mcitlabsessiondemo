/*
module "three_tier_app" {
  source              = "./modulethreetierapp/"
  resource_group_name = "mcitthreetiermodule"
  location            = "West Europe"
  admin_username      = var.administrator_login
  admin_password      = var.administrator_login_password
  db_admin_username   = var.db_admin_username
  db_admin_password   = var.db_admin_password
}

output "module_web_vm_public_ip" {
  value = module.three_tier_app.module_web_vm_public_ip
}

module "three_tier_app_count" {
  source              = "./modulethreetierapp_count/"
  resource_group_name = "mcitthreetiermodulecount"
  location            = "West Europe"
  admin_username      = var.administrator_login
  admin_password      = var.administrator_login_password
  db_admin_username   = var.db_admin_username
  db_admin_password   = var.db_admin_password
  count               = var.instance_count
}

output "module_web_vm_public_ip_count" {
  value = [for i in range(var.instance_count) : module.three_tier_app_count[i].module_web_vm_public_ip_count]
}
variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 1
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
*/
