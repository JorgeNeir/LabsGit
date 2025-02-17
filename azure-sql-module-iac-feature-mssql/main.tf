resource "azurerm_mssql_server" "this" {
  count                                = var.create_mssql_server ? 1 : 0
  name                                 = var.name_mssql_server
  resource_group_name                  = var.resource_group_name
  location                             = var.resource_group_location
  version                              = var.sql_server_version
  administrator_login                  = var.administrator_login
  administrator_login_password         = var.administrator_login_password
  connection_policy                    = var.connection_policy
  minimum_tls_version                  = var.minimum_tls_version
  public_network_access_enabled        = var.public_network_access_enabled
  outbound_network_restriction_enabled = var.outbound_network_restriction_enabled

  dynamic "azuread_administrator" {
    for_each = length(var.azuread_administrator) > 0 ? [var.azuread_administrator_enabled] : []
    content {
      login_username              = lookup(azuread_administrator.value, "login_username", "")
      object_id                   = lookup(azuread_administrator.value, "object_id", null)
      tenant_id                   = lookup(azuread_administrator.value, "tenant_id", null)
      azuread_authentication_only = lookup(azuread_administrator.value, "azuread_authentication_only", false)
    }
  }

  dynamic "identity" {
    for_each = length(var.identity) > 0 ? [var.identity] : []
    content {
      type         = lookup(identity.value, "type", "UserAssigned")
      identity_ids = lookup(identity.value, "identity_ids", [])
    }
  }
}

resource "azurerm_mssql_database" "this" {
  count                                                      = var.create_mssql_database ? 1 : 0
  name                                                       = var.name_mssql_database
  server_id                                                  = azurerm_mssql_server.this[0].id
  auto_pause_delay_in_minutes                                = var.auto_pause_delay_in_minutes
  create_mode                                                = var.create_mode
  creation_source_database_id                                = var.creation_source_database_id
  collation                                                  = var.collation
  enclave_type                                               = var.enclave_type
  elastic_pool_id                                            = var.elastic_pool_id
  geo_backup_enabled                                         = var.geo_backup_enabled
  maintenance_configuration_name                             = var.maintenance_configuration_name
  ledger_enabled                                             = var.ledger_enabled
  license_type                                               = var.license_type
  max_size_gb                                                = var.max_size_gb
  min_capacity                                               = var.min_capacity
  restore_point_in_time                                      = var.create_mode == "PointInTimeRestore" ? var.restore_point_in_time : null
  recover_database_id                                        = var.create_mode == "Recovery" ? var.recover_database_id : null
  restore_dropped_database_id                                = var.create_mode == "Restore" ? var.restore_dropped_database_id : null
  read_replica_count                                         = var.read_replica_count
  read_scale                                                 = var.read_scale
  sample_name                                                = var.sample_name
  sku_name                                                   = var.sku_name
  storage_account_type                                       = var.storage_account_type
  transparent_data_encryption_enabled                        = var.transparent_data_encryption_enabled
  transparent_data_encryption_key_vault_key_id               = var.transparent_data_encryption_key_vault_key_id
  transparent_data_encryption_key_automatic_rotation_enabled = var.transparent_data_encryption_key_automatic_rotation_enabled
  zone_redundant                                             = var.zone_redundant
  secondary_type                                             = var.secondary_type

  dynamic "import" {
    for_each = length(var.import) > 0 ? [var.import] : []
    content {
      storage_uri                  = lookup(import.value, "storage_uri", )
      storage_key                  = lookup(import.value, "storage_key", )
      storage_key_type             = lookup(import.value, "storage_key_type", )
      administrator_login          = lookup(import.value, "administrator_login", )
      administrator_login_password = lookup(import.value, "administrator_login_password", )
      authentication_type          = lookup(import.value, "authentication_type", )
      storage_account_id           = lookup(import.value, "storage_account_id", )
    }
  }

  dynamic "threat_detection_policy" {
    for_each = length(var.threat_detection_policy) > 0 ? [var.threat_detection_policy] : []
    content {
      state                      = lookup(threat_detection_policy.value, "state", "Disabled")
      disabled_alerts            = lookup(threat_detection_policy.value, "disable_alerts", null)
      email_account_admins       = lookup(threat_detection_policy.value, "email_account_admins", "Disabled")
      email_addresses            = lookup(threat_detection_policy.value, "email_addresses", [])
      retention_days             = lookup(threat_detection_policy.value, "retention_days", null)
      storage_account_access_key = var.threat_detection_policy.state == "Enable" ? lookup(threat_detection_policy.value, "storage_account_access_key", null) : null
      storage_endpoint           = var.threat_detection_policy.state == "Enable" ? lookup(threat_detection_policy.value, "storage_endpoint", "https://example.blob.core.windows.net") : null
    }
  }

  dynamic "long_term_retention_policy" {
    for_each = length(var.long_term_retention_policy) > 0 ? [var.long_term_retention_policy] : []
    content {
      weekly_retention          = lookup(long_term_retention_policy.value, "weekly_retention", "P1W")
      monthly_retention         = lookup(long_term_retention_policy.value, "monthly_retention", "P1M")
      yearly_retention          = lookup(long_term_retention_policy.value, "yearly_retention", "P12M")
      week_of_year              = lookup(long_term_retention_policy.value, "week_of_year", "1")
      immutable_backups_enabled = lookup(long_term_retention_policy.value, "immutable_backups_enabled", false)
    }
  }

  dynamic "short_term_retention_policy" {
    for_each = length(var.short_term_retention_policy) > 0 ? [var.short_term_retention_policy] : []
    content {
      retention_days           = lookup(short_term_retention_policy.value, "retention_days", 1)
      backup_interval_in_hours = lookup(short_term_retention_policy.value, "backup_interval_in_hours", 1)
    }
  }
}
