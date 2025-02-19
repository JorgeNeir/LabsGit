variable "create_vm" {
  description = "Whether to create a virtual machine with its resources"
  type        = bool
  default     = false
}

variable "vm_name" {
  description = "The name of the Linux Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "resource_group_name" {
  description = "name of the resource group"
  type        = string
  default     = ""
}

variable "resource_group_location" {
  description = "location of the resource group"
  type        = string
  default     = ""
}

variable "vm_size" {
  description = "The SKU which should be used for this Virtual Machine, such as Standard_F2."
  type        = string
  default     = ""
}

variable "user_vm" {
  description = "The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "admin_password" {
  description = "The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "allow_extension_operations" {
  description = "The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = "false"
}

variable "disable_password_authentication" {
  description = "Should Password Authentication be disabled on this Virtual Machine? Defaults to true. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}

variable "license_type" {
  description = "Specifies the License Type for this Virtual Machine. Possible values are RHEL_BYOS, RHEL_BASE, RHEL_EUS, RHEL_SAPAPPS, RHEL_SAPHA, RHEL_BASESAPAPPS, RHEL_BASESAPHA, SLES_BYOS, SLES_SAP, SLES_HPC."
  type        = string
  default     = "RHEL_BASE"
}

variable "availability_set_id" {
  description = "Specifies the ID of the Availability Set in which the Virtual Machine should exist."
  type        = string
  default     = null
}

variable "source_image_id" {
  description = "The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include Image IDs, Shared Image IDs, Shared Image Version IDs, Community Gallery Image IDs, Community Gallery Image Version IDs, Shared Gallery Image IDs and Shared Gallery Image Version IDs."
  type        = string
  default     = null
}

variable "bypass_platform_safety_checks_on_user_schedule_enabled" {
  description = "Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM."
  type        = bool
  default     = false
}

variable "disk_controller_type" {
  description = "Specifies the Disk Controller Type used for this Virtual Machine. Possible values are SCSI and NVMe."
  type        = string
  default     = "SCSI"
}

variable "edge_zone" {
  description = "pecifies the Edge Zone within the Azure Region where this Linux Virtual Machine should exist."
  type        = string
  default     = null
}

variable "encryption_at_host_enabled" {
  description = "Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?"
  type        = bool
  default     = true
}

variable "patch_mode" {
  description = "Specifies the mode of in-guest patching to this Linux Virtual Machine. Possible values are AutomaticByPlatform and ImageDefault."
  type        = string
  default     = null
}

variable "reboot_setting" {
  description = "Specifies the reboot setting for platform scheduled patching. Possible values are Always, IfRequired and Never."
  type        = string
  default     = null
}

variable "virtual_machine_scale_set_id" {
  description = "Specifies the ID of the Virtual Machine Scale Set in which the Virtual Machine should exist."
  type        = string
  default     = null
}

variable "network_interface_ids" {
  description = "value of the network interface"
  type        = list(string)
  default     = []
}

variable "availability_zone" {
  description = "Specifies the Availability Zones in which this Linux Virtual Machine should be located."
  type        = string
  default     = "1"
}

variable "admin_ssh_key" {
  description = "The list of the ssh key"

  type = list(object({
    username   = string
    public_key = string
  }))

  default = []
}

variable "os_disk" {
  description = "The list of the disk to assign"

  type = list(object({
    caching              = string
    storage_account_type = string
  }))

  default = []
}

variable "source_image_reference" {
  description = "The list of the caracterists from virtual machine"

  type = list(object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  }))

  default = []
}

##################################### VM WINDOWS VARIABLES #####################################

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
  description = " The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "admin_password_win" {
  description = "The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "allow_extension_operations_win" {
  description = "The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = "false"
}

variable "license_type_win" {
  description = "Specifies the type of on-premise license (also known as Azure Hybrid Use Benefit) which should be used for this Virtual Machine. Possible values are None, Windows_Client and Windows_Server."
  type        = string
  default     = "None"
}

variable "network_interface_ids_win" {
  description = "value of the network interface"
  type        = list(string)
  default     = []
}

variable "availability_set_id_win" {
  description = "Specifies the ID of the Availability Set in which the Virtual Machine should exist."
  type        = string
  default     = ""
}

variable "source_image_id_win" {
  description = "The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include Image IDs, Shared Image IDs, Shared Image Version IDs, Community Gallery Image IDs, Community Gallery Image Version IDs, Shared Gallery Image IDs and Shared Gallery Image Version IDs."
  type        = string
  default     = null
}

variable "bypass_platform_safety_checks_on_user_schedule_enabled_win" {
  description = "Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM."
  type        = bool
  default     = false
}

variable "disk_controller_type_win" {
  description = "Specifies the Disk Controller Type used for this Virtual Machine. Possible values are SCSI and NVMe."
  type        = string
  default     = "SCSI"
}

variable "edge_zone_win" {
  description = "Specifies the Edge Zone within the Azure Region where this Linux Virtual Machine should exist."
  type        = string
  default     = ""
}

variable "encryption_at_host_enabled_win" {
  description = "Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?"
  type        = bool
  default     = true
}

variable "patch_mode_win" {
  description = "Specifies the mode of in-guest patching to this Linux Virtual Machine. Possible values are AutomaticByPlatform and ImageDefault."
  type        = string
  default     = null
}

variable "reboot_setting_win" {
  description = "Specifies the reboot setting for platform scheduled patching. Possible values are Always, IfRequired and Never."
  type        = string
  default     = null
}

variable "virtual_machine_scale_set_id_win" {
  description = "Specifies the ID of the Virtual Machine Scale Set in which the Virtual Machine should exist."
  type        = string
  default     = ""
}

variable "availability_zone_win" {
  description = "Specifies the Availability Zones in which this Linux Virtual Machine should be located."
  type        = string
  default     = ""
}

variable "os_disk_win" {
  description = "The list of the disk to assign"

  type = list(object({
    caching              = string
    storage_account_type = string
  }))

  default = []
}

variable "source_image_reference_win" {
  description = "The list of the caracterists from virtual machine"

  type = list(object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  }))

  default = []
}
