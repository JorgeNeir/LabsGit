variable "create_mssql_server" {
  description = "Controls whether to create the MSSQL server."
  type        = bool
}

variable "create_mssql_database" {
  description = "Controls whether to create the MSSQL database."
  type        = bool
  default     = false
}

variable "name_mssql_server" {
  description = "The name of the MSSQL server. Must be unique within Azure."
  type        = string
  default     = ""
}

variable "name_mssql_database" {
  description = "The name of the MSSQL database."
  type        = string
  default     = ""
}

variable "sql_server_version" {
  description = "The version of the MSSQL server. Valid values are: 2.0 and 12.0."
  type        = string
  default     = "12.0"
}

variable "public_network_access_enabled" {
  description = "Indicates whether public network access is allowed for the server."
  type        = bool
  default     = false
}

variable "administrator_login" {
  description = "The administrator login name for the new server."
  type        = string
  default     = ""
}

variable "collation" {
  description = "Specifies the collation of the database. "
  type        = string
  default     = ""
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

variable "read_scale" {
  description = "The read scale of the database."
  type        = string
  default     = "Disabled"
}

variable "sku_name" {
  description = "Specifies the name of the SKU used by the database. For example, GP_S_Gen5_2,HS_Gen4_1,BC_Gen5_2, ElasticPool, Basic,S0, P2 ,DW100c, DS100."
  type        = string
  default     = "GP_Gen5_2"
}

variable "zone_redundant" {
  description = "Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones. This property is only settable for Premium and Business Critical databases."
  type        = bool
  default     = false
}

variable "unique_id" {
  description = "A unique identifier for the resource group."
  type        = string
  default     = "mnfdcx"
}
