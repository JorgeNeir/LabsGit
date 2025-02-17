output "vm_id" {
  description = "El ID de la máquina virtual creada"
  value       = azurerm_virtual_machine.this.id
}
