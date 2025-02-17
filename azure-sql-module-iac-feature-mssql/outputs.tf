output "mssql_server_id" {
  description = "The ID of the MSSQL Server."
  value       = azurerm_mssql_server.this[0].id
  depends_on  = [azurerm_mssql_server.this]
}

output "mssql_server_fqdn" {
  description = "The fully qualified domain name of the MSSQL Server."
  value       = azurerm_mssql_server.this[0].fully_qualified_domain_name
  depends_on  = [azurerm_mssql_server.this]
}

output "mssql_database_id" {
  description = "The ID of the MSSQL Database."
  value       = azurerm_mssql_database.this[0].id
  depends_on  = [azurerm_mssql_database.this]
}
