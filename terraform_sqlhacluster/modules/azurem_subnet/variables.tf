variable "subnet_name" {
  description = "Nombre del subnet"
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
}

variable "virtual_network_name" {
  description = "Nombre de la Virtual Network"
  type        = string
}

variable "address_prefixes" {
  description = "Lista de prefijos de dirección"
  type        = list(string)
}
