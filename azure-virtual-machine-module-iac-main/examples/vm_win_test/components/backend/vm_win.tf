module "virtual_machine_windowns" {
  source = "../../../../"

  create_vm_win                  = var.create_vm_win
  vm_name_win                    = var.vm_name_win
  resource_group_name            = azurerm_resource_group.this.name
  resource_group_location        = azurerm_resource_group.this.location
  vm_size_win                    = var.vm_size_win
  user_vm_win                    = var.user_vm_win
  allow_extension_operations_win = var.allow_extension_operations_win
  os_disk_win                    = var.os_disk_win
  source_image_id_win            = var.source_image_id_win
}
