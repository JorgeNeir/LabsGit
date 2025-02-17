locals {
  administrator_login_password = "DMsg3EZFN4d#KFFFqLPe5@cE5m5BS^"
}

module "sql_basic" {
  source = "../../../../"

  create_mssql_database         = var.create_mssql_database
  create_mssql_server           = var.create_mssql_server
  resource_group_name           = azurerm_resource_group.this.name
  resource_group_location       = azurerm_resource_group.this.location
  name_mssql_server             = var.name_mssql_server
  name_mssql_database           = var.name_mssql_database
  sql_server_version            = var.sql_server_version
  public_network_access_enabled = var.public_network_access_enabled
  administrator_login           = var.administrator_login
  administrator_login_password  = local.administrator_login_password
  collation                     = var.collation
  license_type                  = var.license_type
  max_size_gb                   = var.max_size_gb
  read_scale                    = var.read_scale
  sku_name                      = var.sku_name
  zone_redundant                = var.zone_redundant
}
