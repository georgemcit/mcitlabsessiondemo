
resource "azurerm_resource_group" "georgeibrahim" {
  name     = "george_ibrahim_1980_01_05"
  location = "Canada Central"
}
variable "vm_count"{
    type=number
    default=4
}
variable "vm_size"{
    type=string
    default="Standard_F2"
}
resource "azurerm_virtual_network" "vnetexample" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.georgeibrahim.location
  resource_group_name = azurerm_resource_group.georgeibrahim.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.georgeibrahim.name
  virtual_network_name = azurerm_virtual_network.vnetexample.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_interface" "nic" {
  count               = var.vm_count
  name                = "example-nic-${count.index}"
  location            = azurerm_resource_group.georgeibrahim.location
  resource_group_name = azurerm_resource_group.georgeibrahim.name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  count               = var.vm_count
  name                = "example-vm-${count.index}"
  resource_group_name = azurerm_resource_group.georgeibrahim.name
  location            = azurerm_resource_group.georgeibrahim.location
  size                = var.vm_size
  admin_username      = var.administrator_login
  admin_password      = var.administrator_login_password
  network_interface_ids = [
    azurerm_network_interface.nic[count.index].id,
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}

output "vm_public_ips" {
  value = azurerm_linux_virtual_machine.vm[*].public_ip_address
}
variable "admin_username"{
  type=string
}
variable "administrator_login_password"{
  type=string
}
output "administrator_login" {
  sensitive = true
  value = var.administrator_login
}
output "admin_password " {
  sensitive = true
  value = var.administrator_login_password
}
