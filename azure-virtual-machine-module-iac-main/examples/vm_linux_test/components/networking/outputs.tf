output "virtual_network_id" {
  value       = azurerm_virtual_network.this.id
  description = "Id of the virtual network"
}

output "subnet_id" {
  value       = azurerm_subnet.sub.id
  description = "Id of the subnet"
}
