output "network_interface_id" {
  description = "ID de la interfaz de red creada"
  value       = module.network_interface.nic_id
}

output "virtual_machine_id" {
  description = "ID de la máquina virtual creada"
  value       = module.virtual_machine.vm_id
}
