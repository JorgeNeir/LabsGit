variable "vm_name" {
  description = "Nombre de la máquina virtual"
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

variable "network_interface_id" {
  description = "ID de la interfaz de red asociada"
  type        = string
}

variable "vm_size" {
  description = "Tamaño de la máquina virtual"
  type        = string
}

variable "admin_username" {
  description = "Nombre de usuario administrador"
  type        = string
}

variable "admin_password" {
  description = "Contraseña del administrador"
  type        = string
  sensitive   = true
}
