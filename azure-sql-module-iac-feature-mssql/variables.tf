variable "create_mssql_server" {
  description = "Controls whether to create the MSSQL server."
  type        = bool
  default     = false
}

variable "name_mssql_server" {
  description = "The name of the MSSQL server. Must be unique within Azure."
  type        = string
  default     = ""
}

variable "resource_group_name" {
  description = "The name of the resource group where the MSSQL server will be created."
  type        = string
}

variable "resource_group_location" {
  description = "The Azure location where the resource will exist."
  type        = string
}

variable "sql_server_version" {
  description = "The version of the MSSQL server. Valid values are: 2.0 and 12.0."
  type        = string
  default     = "12.0"
}

variable "administrator_login" {
  description = "The administrator login name for the new server."
  type        = string
  default     = ""
}

variable "administrator_login_password" {
  description = "The password associated with the administrator user."
  type        = string
  default     = ""
}

variable "connection_policy" {
  description = "The connection policy for the server. Valid values are 'Default', 'Proxy', and 'Redirect'."
  type        = string
  default     = "Default"
}

variable "minimum_tls_version" {
  description = "The minimum TLS version for the server. Valid values are '1.0', '1.1', and '1.2'."
  type        = string
  default     = "1.2"
}

variable "public_network_access_enabled" {
  description = "Indicates whether public network access is allowed for the server."
  type        = bool
  default     = false
}

variable "outbound_network_restriction_enabled" {
  description = "Whether outbound network traffic is restricted for this server."
  type        = bool
  default     = false
}

variable "azuread_administrator" {
  description = "Configuration for Azure AD administrator."
  type        = any
  default     = {}
}

variable "azuread_administrator_enabled" {
  description = "Indicates whether to configure an Azure AD administrator."
  type        = bool
  default     = false
}

variable "identity" {
  description = "The managed identity type for the SQL server. Valid values are 'SystemAssigned', 'UserAssigned', and 'None'."
  type        = map(any)
  default     = {}
}

variable "create_mssql_database" {
  description = "Controls whether to create the MSSQL database."
  type        = bool
  default     = false
}

variable "name_mssql_database" {
  description = "The name of the MSSQL database."
  type        = string
  default     = ""
}

variable "auto_pause_delay_in_minutes" {
  description = " Time in minutes after which database is automatically paused."
  type        = number
  default     = 60
}

variable "create_mode" {
  description = "The creation mode of the database. Valid values are 'Default', 'Restore', 'PointInTimeRestore', 'Recovery', 'RestoreExternalBackup', 'Copy', 'OnlineSecondary', 'NonReadableSecondary', 'OnlinePrimary', 'NonReadablePrimary', 'OnlineSecondaryExternal', 'NonReadableSecondaryExternal', 'OnlinePrimaryExternal', and 'NonReadablePrimaryExternal'."
  type        = string
  default     = "Default"
}

variable "creation_source_database_id" {
  description = "The resource ID of the source database to create from."
  type        = string
  default     = null
}

variable "collation" {
  description = "Specifies the collation of the database. "
  type        = string
  default     = ""
}

variable "enclave_type" {
  description = "Specifies the type of enclave to be used by the elastic pool. When enclave_type is not specified (e.g., the default) enclaves are not enabled on the database. Once enabled (e.g., by specifying Default or VBS) removing the enclave_type field from the configuration file will force the creation of a new resource. Possible values are Default or VBS."
  type        = string
  default     = null
}

variable "elastic_pool_id" {
  description = "The ID of the elastic pool to which to add the database."
  type        = string
  default     = null
}

variable "geo_backup_enabled" {
  description = "boolean that specifies if the Geo Backup Policy is enabled."
  type        = bool
  default     = true
}

variable "maintenance_configuration_name" {
  description = "The name of the Public Maintenance Configuration window to apply to the database. Valid values include SQL_Default, SQL_EastUS_DB_1, SQL_EastUS2_DB_1, SQL_SoutheastAsia_DB_1, SQL_AustraliaEast_DB_1, SQL_NorthEurope_DB_1, SQL_SouthCentralUS_DB_1, SQL_WestUS2_DB_1, SQL_UKSouth_DB_1, SQL_WestEurope_DB_1, SQL_EastUS_DB_2, SQL_EastUS2_DB_2, SQL_WestUS2_DB_2, SQL_SoutheastAsia_DB_2, SQL_AustraliaEast_DB_2, SQL_NorthEurope_DB_2, SQL_SouthCentralUS_DB_2, SQL_UKSouth_DB_2, SQL_WestEurope_DB_2, SQL_AustraliaSoutheast_DB_1, SQL_BrazilSouth_DB_1, SQL_CanadaCentral_DB_1, SQL_CanadaEast_DB_1, SQL_CentralUS_DB_1, SQL_EastAsia_DB_1, SQL_FranceCentral_DB_1, SQL_GermanyWestCentral_DB_1, SQL_CentralIndia_DB_1, SQL_SouthIndia_DB_1, SQL_JapanEast_DB_1, SQL_JapanWest_DB_1, SQL_NorthCentralUS_DB_1, SQL_UKWest_DB_1, SQL_WestUS_DB_1, SQL_AustraliaSoutheast_DB_2, SQL_BrazilSouth_DB_2, SQL_CanadaCentral_DB_2, SQL_CanadaEast_DB_2, SQL_CentralUS_DB_2, SQL_EastAsia_DB_2, SQL_FranceCentral_DB_2, SQL_GermanyWestCentral_DB_2, SQL_CentralIndia_DB_2, SQL_SouthIndia_DB_2, SQL_JapanEast_DB_2, SQL_JapanWest_DB_2, SQL_NorthCentralUS_DB_2, SQL_UKWest_DB_2, SQL_WestUS_DB_2, SQL_WestCentralUS_DB_1, SQL_FranceSouth_DB_1, SQL_WestCentralUS_DB_2, SQL_FranceSouth_DB_2, SQL_SwitzerlandNorth_DB_1, SQL_SwitzerlandNorth_DB_2, SQL_BrazilSoutheast_DB_1, SQL_UAENorth_DB_1, SQL_BrazilSoutheast_DB_2, SQL_UAENorth_DB_2. Defaults to SQL_Default."
  type        = string
  default     = null
}

variable "ledger_enabled" {
  description = "boolean that specifies if the ledger is enabled."
  type        = bool
  default     = false
}

variable "license_type" {
  description = "The license type to apply for this database. Valid values are 'LicenseIncluded' and 'BasePrice'."
  type        = string
  default     = "LicenseIncluded"
}

variable "max_size_gb" {
  description = "The max size of the database expressed in bytes."
  type        = number
  default     = 2
}

variable "min_capacity" {
  description = "The minimum capacity of the database."
  type        = number
  default     = 1
}

variable "restore_point_in_time" {
  description = "The point in time to restore the database to."
  type        = string
  default     = ""
}

variable "recover_database_id" {
  description = "The resource ID of the database to recover."
  type        = string
  default     = ""
}

variable "restore_dropped_database_id" {
  description = "The resource ID of the database to restore."
  type        = string
  default     = ""
}

variable "read_replica_count" {
  description = "The number of read replicas for the database."
  type        = number
  default     = 0
}

variable "read_scale" {
  description = "The read scale of the database."
  type        = string
  default     = "Disabled"
}

variable "sample_name" {
  description = "Specifies the name of the sample schema to apply when creating this database. "
  type        = string
  default     = null
}

variable "sku_name" {
  description = "Specifies the name of the SKU used by the database. For example, GP_S_Gen5_2,HS_Gen4_1,BC_Gen5_2, ElasticPool, Basic,S0, P2 ,DW100c, DS100."
  type        = string
  default     = "GP_Gen5_2"
}

variable "storage_account_type" {
  description = "Specifies the storage account type used to store backups for this database. Possible values are Geo, GeoZone, Local and Zone."
  type        = string
  default     = "Local"
}

variable "transparent_data_encryption_key_vault_key_id" {
  description = "The fully versioned Key Vault Key URL (e.g. 'https://<YourVaultName>.vault.azure.net/keys/<YourKeyName>/<YourKeyVersion>) to be used as the Customer Managed Key(CMK/BYOK) for the Transparent Data Encryption(TDE) layer."
  type        = string
  default     = null
}

variable "transparent_data_encryption_key_automatic_rotation_enabled" {
  description = "Boolean flag to specify whether TDE automatically rotates the encryption Key to latest version or not. Possible values are true or false."
  type        = bool
  default     = null
}

variable "transparent_data_encryption_enabled" {
  description = "If set to true, Transparent Data Encryption will be enabled on the database. If set to false, Transparent Data Encryption will be disabled on the database."
  type        = bool
  default     = null
}

variable "zone_redundant" {
  description = "Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones. This property is only settable for Premium and Business Critical databases."
  type        = bool
  default     = false
}

variable "secondary_type" {
  description = "How do you want your replica to be made? Valid values include Geo and Named."
  type        = string
  default     = "Geo"
}

variable "import" {
  description = "Configuration for database import."
  type        = any
  default     = []
}

variable "threat_detection_policy" {
  description = "Threat detection policy configuration."
  type        = any
  default     = []
}

variable "long_term_retention_policy" {
  description = "Long-term retention policy configuration."
  type        = any
  default     = []
}

variable "short_term_retention_policy" {
  description = "Short-term retention policy configuration."
  type        = any
  default     = []
}
