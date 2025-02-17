output "nic_id" {
  description = "El ID de la interfaz de red creada"
  value       = azurerm_network_interface.this.id
}
