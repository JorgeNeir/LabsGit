create_vm_win                  = true
vm_name_win                    = "testvirtualmachine"
vm_size_win                    = "Standard_F2"
user_vm_win                    = "admincloud"
allow_extension_operations_win = false

os_disk_win = [
  {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
]
