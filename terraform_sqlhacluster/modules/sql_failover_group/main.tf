resource "azurerm_sql_failover_group" "this" {
  name                = var.failover_group_name
  resource_group_name = var.resource_group_name
  server_name         = var.sql_server_name
  partner_servers     = [var.partner_server_id]

  read_write_failover_policy {
    mode          = "Automatic"
    grace_minutes = 60
  }
  
  // ...otros parámetros según necesidad...
}
