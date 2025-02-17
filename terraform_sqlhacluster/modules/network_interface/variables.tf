variable "nic_name" {
  description = "Nombre de la interfaz de red"
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
}

variable "location" {
  description = "Región de despliegue"
  type        = string
}

variable "subnet_id" {
  description = "ID de la subred para la interfaz"
  type        = string
}
