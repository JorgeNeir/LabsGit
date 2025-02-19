output "virtual_machine_id" {
  value       = azurerm_linux_virtual_machine.this.*.id
  description = "Id of the virtual machine linux"
}

output "virtual_machine_name" {
  value       = azurerm_linux_virtual_machine.this.*.name
  description = "Name of the virtual machine linux"
}

output "virtual_machine_win_id" {
  value       = azurerm_windows_virtual_machine.this.*.id
  description = "Id of the virtual machine windows"
}

output "virtual_machine_win_name" {
  value       = azurerm_windows_virtual_machine.this.*.name
  description = "Name of the virtual machine windows"
}
