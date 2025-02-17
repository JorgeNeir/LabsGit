variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
}

variable "sql_server_name" {
  description = "Nombre del servidor SQL primario"
  type        = string
}

variable "failover_group_name" {
  description = "Nombre del grupo de conmutación por error"
  type        = string
}

variable "partner_server_id" {
  description = "ID del servidor SQL secundario"
  type        = string
}
