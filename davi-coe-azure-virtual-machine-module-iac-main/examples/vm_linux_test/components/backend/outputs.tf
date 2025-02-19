output "rg_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.this.name
}

output "rg_location" {
  description = "The location of the resource group"
  value       = azurerm_resource_group.this.location
}

output "virtual_machine_name" {
  value       = module.virtual_machine_linux.virtual_machine_name
  description = "Name of the virtual machine"
}
