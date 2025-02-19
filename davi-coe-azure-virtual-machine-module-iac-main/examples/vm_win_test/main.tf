module "backend" {
  source = "./components/backend"

  create_vm_win                  = var.create_vm_win
  vm_name_win                    = var.vm_name_win
  vm_size_win                    = var.vm_size_win
  user_vm_win                    = var.user_vm_win
  allow_extension_operations_win = var.allow_extension_operations_win
  os_disk_win                    = var.os_disk_win
  source_image_id_win            = "Canonical:UbuntuServer:18.04-LTS:latest"
  unique_id                      = var.unique_id
}

module "networking" {
  source = "./components/networking"

  resource_group_name = module.backend.rg_name
}
