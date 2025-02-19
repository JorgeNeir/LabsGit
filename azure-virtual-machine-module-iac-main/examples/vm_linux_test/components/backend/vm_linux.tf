locals {
  admin_password = "x9*51j,>AWwo:2h|9A?"
}

module "virtual_machine_linux" {
  source = "../../../../"

  resource_group_name        = azurerm_resource_group.this.name
  resource_group_location    = azurerm_resource_group.this.location
  create_vm                  = var.create_vm
  vm_name                    = var.vm_name
  vm_size                    = var.vm_size
  user_vm                    = var.user_vm
  admin_password             = local.admin_password
  allow_extension_operations = var.allow_extension_operations
  os_disk                    = var.os_disk
  source_image_id            = var.source_image_id
  network_interface_ids      = [azurerm_network_interface.this.id, azurerm_network_interface.this2.id]
}
