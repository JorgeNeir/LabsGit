resource "azurerm_linux_virtual_machine" "this" {
  count                                                  = var.create_vm ? 1 : 0
  name                                                   = var.vm_name
  resource_group_name                                    = var.resource_group_name
  location                                               = var.resource_group_location
  size                                                   = var.vm_size
  allow_extension_operations                             = var.allow_extension_operations
  admin_username                                         = var.user_vm
  admin_password                                         = var.admin_password
  disable_password_authentication                        = length(var.admin_password) > 0 ? var.disable_password_authentication : true
  network_interface_ids                                  = var.network_interface_ids
  license_type                                           = var.license_type
  availability_set_id                                    = var.availability_set_id
  bypass_platform_safety_checks_on_user_schedule_enabled = var.bypass_platform_safety_checks_on_user_schedule_enabled
  disk_controller_type                                   = var.disk_controller_type
  edge_zone                                              = var.edge_zone
  encryption_at_host_enabled                             = var.encryption_at_host_enabled
  patch_mode                                             = var.patch_mode
  reboot_setting                                         = var.reboot_setting
  virtual_machine_scale_set_id                           = var.virtual_machine_scale_set_id
  zone                                                   = var.availability_zone
  source_image_id                                        = var.source_image_id

  dynamic "admin_ssh_key" {
    for_each = length(var.admin_ssh_key) > 0 && length(var.admin_password) == 0 ? var.admin_ssh_key : []
    content {
      username   = lookup(admin_ssh_key.value, "username", null)
      public_key = lookup(admin_ssh_key.value, "public_key", null)
    }
  }

  dynamic "os_disk" {
    for_each = length(var.os_disk) > 0 ? var.os_disk : []

    content {
      caching              = lookup(os_disk.value, "caching", null)
      storage_account_type = lookup(os_disk.value, "storage_account_type", null)
    }
  }

  dynamic "source_image_reference" {
    for_each = length(var.source_image_reference) > 0 ? var.source_image_reference : []

    content {
      publisher = source_image_reference.value.publisher
      offer     = source_image_reference.value.offer
      sku       = source_image_reference.value.sku
      version   = source_image_reference.value.version
    }
  }
}

########################################## WINDOWS VM ##########################################

resource "azurerm_windows_virtual_machine" "this" {
  count                                                  = var.create_vm_win ? 1 : 0
  name                                                   = var.vm_name_win
  resource_group_name                                    = var.resource_group_name
  location                                               = var.resource_group_location
  size                                                   = var.vm_size_win
  allow_extension_operations                             = var.allow_extension_operations_win
  admin_username                                         = var.user_vm_win
  admin_password                                         = var.admin_password_win
  network_interface_ids                                  = var.network_interface_ids_win
  license_type                                           = var.license_type_win
  availability_set_id                                    = var.availability_set_id_win
  bypass_platform_safety_checks_on_user_schedule_enabled = var.bypass_platform_safety_checks_on_user_schedule_enabled_win
  disk_controller_type                                   = var.disk_controller_type_win
  edge_zone                                              = var.edge_zone_win
  encryption_at_host_enabled                             = var.encryption_at_host_enabled_win
  patch_mode                                             = var.patch_mode_win
  reboot_setting                                         = var.reboot_setting_win
  virtual_machine_scale_set_id                           = var.virtual_machine_scale_set_id_win
  zone                                                   = var.availability_zone_win
  source_image_id                                        = var.source_image_id_win

  dynamic "os_disk" {
    for_each = length(var.os_disk_win) > 0 ? var.os_disk_win : []

    content {
      caching              = lookup(os_disk.value, "caching", null)
      storage_account_type = lookup(os_disk.value, "storage_account_type", null)
    }
  }

  dynamic "source_image_reference" {
    for_each = length(var.source_image_reference_win) > 0 ? var.source_image_reference_win : []

    content {
      publisher = source_image_reference.value.publisher
      offer     = source_image_reference.value.offer
      sku       = source_image_reference.value.sku
      version   = source_image_reference.value.version
    }
  }
}
