create_vm                  = true
vm_name                    = "testvirtualmachine"
vm_size                    = "Standard_D4s_v3"
user_vm                    = "admincloud"
allow_extension_operations = false

os_disk = [
  {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
]
