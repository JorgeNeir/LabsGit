variable "unique_id" {
  description = "Variable used only for testing purposes"
  type        = string
  default     = "wettv"
}

variable "create_vm_win" {
  description = "Whether to create a virtual machine with its resources"
  type        = bool
  default     = false
}

variable "vm_name_win" {
  description = "The name of the Linux Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "vm_size_win" {
  description = "The SKU which should be used for this Virtual Machine, such as Standard_F2."
  type        = string
  default     = ""
}

variable "user_vm_win" {
  description = "The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "allow_extension_operations_win" {
  description = "The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = "false"
}

variable "os_disk_win" {
  description = "The list of the disk to assign"

  type = list(object({
    caching              = string
    storage_account_type = string
  }))

  default = []
}
