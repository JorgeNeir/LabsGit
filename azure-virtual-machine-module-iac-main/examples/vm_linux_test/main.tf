module "backend" {
  source = "./components/backend"

  create_vm                  = var.create_vm
  vm_name                    = var.vm_name
  vm_size                    = var.vm_size
  user_vm                    = var.user_vm
  allow_extension_operations = var.allow_extension_operations
  os_disk                    = var.os_disk
  source_image_id            = data.azurerm_shared_image.this.id
  unique_id                  = var.unique_id
  subnet_id                  = module.networking.subnet_id
}

module "networking" {
  source = "./components/networking"

  resource_group_name = module.backend.rg_name
}
