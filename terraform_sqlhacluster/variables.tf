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

variable "nic_name" {
  description = "Nombre para la interfaz de red"
  type        = string
}

variable "vm_name" {
  description = "Nombre de la máquina virtual"
  type        = string
}

variable "vm_size" {
  description = "Tamaño de la máquina virtual"
  type        = string
}

variable "admin_username" {
  description = "Nombre de usuario administrador para la VM"
  type        = string
}

variable "admin_password" {
  description = "Contraseña para el usuario administrador de la VM"
  type        = string
  sensitive   = true
}

variable "vnet_name" {
  description = "Nombre de la red virtual"
  type        = string
}
