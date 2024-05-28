output "module_web_vm_public_ip" {
  description = "The public IP address of the web VM"
  value       = azurerm_linux_virtual_machine.web_vm.public_ip_address
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
