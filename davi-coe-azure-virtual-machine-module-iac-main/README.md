<div id="top"></div>

<!-- PROJECT SHIELDS -->
[![Terraform Version](https://img.shields.io/badge/Terraform-1.6.x-623CE4.svg?logo=terraform)](https://github.com/hashicorp/terraform/releases)
[![Golang](https://img.shields.io/badge/Golang-v1.20.X-blue.svg?logo=go)](https://golang.org/)
[![git](https://img.shields.io/badge/git-v2.39.X-red.svg?logo=git)](https://git-scm.com/)
[![Testing Status](https://github.com/davivienda-colombia/davi-coe-azure-virtual-machine-module-iac/workflows/Automated%20Testing/badge.svg)](https://github.com/davivienda-colombia/davi-coe-azure-virtual-machine-module-iac/actions)
![Module Level](https://img.shields.io/badge/Module%20Level-I-brightgreen)

<!-- MODULE LEVEL -->

<div align="center" style="margin-top: 20px;">

  <h1 style="color: #e52b50; font-size: 36px; text-shadow: 1px 1px 2px #000000;">Module Level I</h1>

</div>

<!-- PROJECT LOGO -->

 <br/>
<div align="center">
  <a href="https://github.com/davivienda-colombia/davi-coe-terraform-test-lib">
    <img src="./docs/davi_logo.png" alt="Logo" width="550" height="80">
  </a>
</div>

 <br/>
<div align="center">
  <a href="https://github.com/davivienda-colombia/davi-coe-terraform-test-lib">
    <img src="./docs/virtual_machine.png" alt="Logo" height="90">
  </a>
  <p align="center">
    Terraform module which creates Virtual Machine on Azure with all (or almost all) features supported for Davivienda.
     <br/>
    <a href="https://github.com/davivienda-colombia/davi-coe-azure-virtual-machine-module-iac/issues">Report Bug</a>
    ·
    <a href="https://github.com/davivienda-colombia/davi-coe-azure-virtual-machine-module-iac/issues">Request Feature</a>
  </p>
</div>

### AZURE Virtual Machine Documentation

Explore comprehensive documentation on Davivienda's Virtual Machine service at our Confluence space.

[![Click here to read](https://img.shields.io/badge/Click_here_to_read-blue?style=plastic&labelColor=white&color=blue&logoWidth=20&logo=Confluence&logoColor=blue)](https://davivienda-jira.atlassian.net/wiki/x/wQBeCQ)


### AZURE Virtual Machine Terraform Module


These features of Virtual Machine configurations are supported:

- Virtual Machine.


## Usage

### Virtual Machine Linux

```hcl
module "virtual_machine_linux" {
  source = "../../../../"

  create_vm                  = var.create_vm
  vm_name                    = var.vm_name
  resource_group_name        = azurerm_resource_group.this.name
  resource_group_location    = azurerm_resource_group.this.location
  vm_size                    = var.vm_size
  user_vm                    = var.user_vm
  admin_password             = var.admin_password
  allow_extension_operations = var.allow_extension_operations
  network_interface_ids      = var.network_interface_ids
  os_disk                    = var.os_disk
  source_image_id            = var.source_image_id
}
```

### Virtual Machine Windowns
```hcl
module "virtual_machine_windowns" {
  source = "../../../../"

  create_vm_win                  = var.create_vm_win
  vm_name_win                    = var.vm_name_win
  resource_group_name            = azurerm_resource_group.this.name
  resource_group_location        = azurerm_resource_group.this.location
  vm_size_win                    = var.vm_size_win
  user_vm_win                    = var.user_vm_win
  allow_extension_operations_win = var.allow_extension_operations_win
  network_interface_ids_win      = var.network_interface_ids_win
  os_disk_win                    = var.os_disk_win
  source_image_id_win            = var.source_image_id_win
}
```

<div align="right">

  [![Back to Top](https://img.shields.io/badge/%E2%96%B2%EF%B8%8F-Back_to_Top-238636?style=plastic&labelColor=white&color=238636&logo=none&logoColor=white&labelBorderRadius=8)](#Top)

</div>

## Examples:

- [Virtual Machine Basic](https://github.com/davivienda-colombia/davi-coe-azure-virtual-machine-module-iac/tree/main/examples/vnet_test) - Virtual Machine Basic (Virtual Machine Basic)


<div align="right">

  [![Back to Top](https://img.shields.io/badge/%E2%96%B2%EF%B8%8F-Back_to_Top-238636?style=plastic&labelColor=white&color=238636&logo=none&logoColor=white&labelBorderRadius=8)](#Top)

</div>

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.0, < 2.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_windows_virtual_machine.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_admin_password_win"></a> [admin\_password\_win](#input\_admin\_password\_win) | The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_admin_ssh_key"></a> [admin\_ssh\_key](#input\_admin\_ssh\_key) | The list of the ssh key | <pre>list(object({<br>    username   = string<br>    public_key = string<br>  }))</pre> | `[]` | no |
| <a name="input_allow_extension_operations"></a> [allow\_extension\_operations](#input\_allow\_extension\_operations) | The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created. | `string` | `"false"` | no |
| <a name="input_allow_extension_operations_win"></a> [allow\_extension\_operations\_win](#input\_allow\_extension\_operations\_win) | The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created. | `string` | `"false"` | no |
| <a name="input_availability_set_id"></a> [availability\_set\_id](#input\_availability\_set\_id) | Specifies the ID of the Availability Set in which the Virtual Machine should exist. | `string` | `null` | no |
| <a name="input_availability_set_id_win"></a> [availability\_set\_id\_win](#input\_availability\_set\_id\_win) | Specifies the ID of the Availability Set in which the Virtual Machine should exist. | `string` | `""` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Specifies the Availability Zones in which this Linux Virtual Machine should be located. | `string` | `"1"` | no |
| <a name="input_availability_zone_win"></a> [availability\_zone\_win](#input\_availability\_zone\_win) | Specifies the Availability Zones in which this Linux Virtual Machine should be located. | `string` | `""` | no |
| <a name="input_bypass_platform_safety_checks_on_user_schedule_enabled"></a> [bypass\_platform\_safety\_checks\_on\_user\_schedule\_enabled](#input\_bypass\_platform\_safety\_checks\_on\_user\_schedule\_enabled) | Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM. | `bool` | `false` | no |
| <a name="input_bypass_platform_safety_checks_on_user_schedule_enabled_win"></a> [bypass\_platform\_safety\_checks\_on\_user\_schedule\_enabled\_win](#input\_bypass\_platform\_safety\_checks\_on\_user\_schedule\_enabled\_win) | Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM. | `bool` | `false` | no |
| <a name="input_create_vm"></a> [create\_vm](#input\_create\_vm) | Whether to create a virtual machine with its resources | `bool` | `false` | no |
| <a name="input_create_vm_win"></a> [create\_vm\_win](#input\_create\_vm\_win) | Whether to create a virtual machine with its resources | `bool` | `false` | no |
| <a name="input_disable_password_authentication"></a> [disable\_password\_authentication](#input\_disable\_password\_authentication) | Should Password Authentication be disabled on this Virtual Machine? Defaults to true. Changing this forces a new resource to be created. | `bool` | `false` | no |
| <a name="input_disk_controller_type"></a> [disk\_controller\_type](#input\_disk\_controller\_type) | Specifies the Disk Controller Type used for this Virtual Machine. Possible values are SCSI and NVMe. | `string` | `"SCSI"` | no |
| <a name="input_disk_controller_type_win"></a> [disk\_controller\_type\_win](#input\_disk\_controller\_type\_win) | Specifies the Disk Controller Type used for this Virtual Machine. Possible values are SCSI and NVMe. | `string` | `"SCSI"` | no |
| <a name="input_edge_zone"></a> [edge\_zone](#input\_edge\_zone) | pecifies the Edge Zone within the Azure Region where this Linux Virtual Machine should exist. | `string` | `null` | no |
| <a name="input_edge_zone_win"></a> [edge\_zone\_win](#input\_edge\_zone\_win) | Specifies the Edge Zone within the Azure Region where this Linux Virtual Machine should exist. | `string` | `""` | no |
| <a name="input_encryption_at_host_enabled"></a> [encryption\_at\_host\_enabled](#input\_encryption\_at\_host\_enabled) | Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host? | `bool` | `true` | no |
| <a name="input_encryption_at_host_enabled_win"></a> [encryption\_at\_host\_enabled\_win](#input\_encryption\_at\_host\_enabled\_win) | Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host? | `bool` | `true` | no |
| <a name="input_license_type"></a> [license\_type](#input\_license\_type) | Specifies the License Type for this Virtual Machine. Possible values are RHEL\_BYOS, RHEL\_BASE, RHEL\_EUS, RHEL\_SAPAPPS, RHEL\_SAPHA, RHEL\_BASESAPAPPS, RHEL\_BASESAPHA, SLES\_BYOS, SLES\_SAP, SLES\_HPC. | `string` | `"RHEL_BASE"` | no |
| <a name="input_license_type_win"></a> [license\_type\_win](#input\_license\_type\_win) | Specifies the type of on-premise license (also known as Azure Hybrid Use Benefit) which should be used for this Virtual Machine. Possible values are None, Windows\_Client and Windows\_Server. | `string` | `"None"` | no |
| <a name="input_network_interface_ids"></a> [network\_interface\_ids](#input\_network\_interface\_ids) | value of the network interface | `list(string)` | `[]` | no |
| <a name="input_network_interface_ids_win"></a> [network\_interface\_ids\_win](#input\_network\_interface\_ids\_win) | value of the network interface | `list(string)` | `[]` | no |
| <a name="input_os_disk"></a> [os\_disk](#input\_os\_disk) | The list of the disk to assign | <pre>list(object({<br>    caching              = string<br>    storage_account_type = string<br>  }))</pre> | `[]` | no |
| <a name="input_os_disk_win"></a> [os\_disk\_win](#input\_os\_disk\_win) | The list of the disk to assign | <pre>list(object({<br>    caching              = string<br>    storage_account_type = string<br>  }))</pre> | `[]` | no |
| <a name="input_patch_mode"></a> [patch\_mode](#input\_patch\_mode) | Specifies the mode of in-guest patching to this Linux Virtual Machine. Possible values are AutomaticByPlatform and ImageDefault. | `string` | `null` | no |
| <a name="input_patch_mode_win"></a> [patch\_mode\_win](#input\_patch\_mode\_win) | Specifies the mode of in-guest patching to this Linux Virtual Machine. Possible values are AutomaticByPlatform and ImageDefault. | `string` | `null` | no |
| <a name="input_reboot_setting"></a> [reboot\_setting](#input\_reboot\_setting) | Specifies the reboot setting for platform scheduled patching. Possible values are Always, IfRequired and Never. | `string` | `null` | no |
| <a name="input_reboot_setting_win"></a> [reboot\_setting\_win](#input\_reboot\_setting\_win) | Specifies the reboot setting for platform scheduled patching. Possible values are Always, IfRequired and Never. | `string` | `null` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | location of the resource group | `string` | `""` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | name of the resource group | `string` | `""` | no |
| <a name="input_source_image_id"></a> [source\_image\_id](#input\_source\_image\_id) | The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include Image IDs, Shared Image IDs, Shared Image Version IDs, Community Gallery Image IDs, Community Gallery Image Version IDs, Shared Gallery Image IDs and Shared Gallery Image Version IDs. | `string` | `null` | no |
| <a name="input_source_image_id_win"></a> [source\_image\_id\_win](#input\_source\_image\_id\_win) | The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include Image IDs, Shared Image IDs, Shared Image Version IDs, Community Gallery Image IDs, Community Gallery Image Version IDs, Shared Gallery Image IDs and Shared Gallery Image Version IDs. | `string` | `null` | no |
| <a name="input_source_image_reference"></a> [source\_image\_reference](#input\_source\_image\_reference) | The list of the caracterists from virtual machine | <pre>list(object({<br>    publisher = string<br>    offer     = string<br>    sku       = string<br>    version   = string<br>  }))</pre> | `[]` | no |
| <a name="input_source_image_reference_win"></a> [source\_image\_reference\_win](#input\_source\_image\_reference\_win) | The list of the caracterists from virtual machine | <pre>list(object({<br>    publisher = string<br>    offer     = string<br>    sku       = string<br>    version   = string<br>  }))</pre> | `[]` | no |
| <a name="input_user_vm"></a> [user\_vm](#input\_user\_vm) | The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_user_vm_win"></a> [user\_vm\_win](#input\_user\_vm\_win) | The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_virtual_machine_scale_set_id"></a> [virtual\_machine\_scale\_set\_id](#input\_virtual\_machine\_scale\_set\_id) | Specifies the ID of the Virtual Machine Scale Set in which the Virtual Machine should exist. | `string` | `null` | no |
| <a name="input_virtual_machine_scale_set_id_win"></a> [virtual\_machine\_scale\_set\_id\_win](#input\_virtual\_machine\_scale\_set\_id\_win) | Specifies the ID of the Virtual Machine Scale Set in which the Virtual Machine should exist. | `string` | `""` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | The name of the Linux Virtual Machine. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_vm_name_win"></a> [vm\_name\_win](#input\_vm\_name\_win) | The name of the Linux Virtual Machine. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | The SKU which should be used for this Virtual Machine, such as Standard\_F2. | `string` | `""` | no |
| <a name="input_vm_size_win"></a> [vm\_size\_win](#input\_vm\_size\_win) | The SKU which should be used for this Virtual Machine, such as Standard\_F2. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_virtual_machine_id"></a> [virtual\_machine\_id](#output\_virtual\_machine\_id) | Id of the virtual machine linux |
| <a name="output_virtual_machine_name"></a> [virtual\_machine\_name](#output\_virtual\_machine\_name) | Name of the virtual machine linux |
| <a name="output_virtual_machine_win_id"></a> [virtual\_machine\_win\_id](#output\_virtual\_machine\_win\_id) | Id of the virtual machine windows |
| <a name="output_virtual_machine_win_name"></a> [virtual\_machine\_win\_name](#output\_virtual\_machine\_win\_name) | Name of the virtual machine windows |
<!-- END_TF_DOCS -->

<div align="right">

  [![Back to Top](https://img.shields.io/badge/%E2%96%B2%EF%B8%8F-Back_to_Top-238636?style=plastic&labelColor=white&color=238636&logo=none&logoColor=white&labelBorderRadius=8)](#Top)

</div>

## Mantainers
Module is maintained by  [COE Arquitectura Cloud](https://github.com/orgs/davivienda-colombia/teams/arqs-team)

### Authors
- Cristhian Jhael Robayo Arbelaez [cristhian-robayo_davicode](https://github.com/cristhian-robayo_davicode)


Please add here if you made a contribution
<div align="right">

  [![Back to Top](https://img.shields.io/badge/%E2%96%B2%EF%B8%8F-Back_to_Top-238636?style=plastic&labelColor=white&color=238636&logo=none&logoColor=white&labelBorderRadius=8)](#Top)

</div>
