resource "azurerm_network_interface" "nic_name" {
    for_each = var.nics
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

 dynamic "ip_configuration" {
    for_each = each.value.ip_configuration
    content {
    name                          = ip_configuration.value.name
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation
     public_ip_address_id          = data.azurerm_public_ip.pip[each.key].id
  }
}
}



resource "azurerm_linux_virtual_machine" "vm_name" {
    for_each = var.vms

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.size
  admin_username      = data.azurerm_key_vault_secret[each.key].vm_username
  admin_password = data.azurerm_key_vault_secret[each.key].vm_password
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}