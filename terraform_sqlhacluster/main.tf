module "subnet" {
  source              = "./modules/subnet"
  subnet_name         = "example-subnet"
  resource_group_name = var.resource_group_name
  vnet_name           = var.vnet_name
  address_prefixes    = ["10.0.1.0/24"]
}

module "network_interface" {
  source              = "./modules/network_interface"
  nic_name            = var.nic_name
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = module.subnet.subnet_id
}

module "virtual_machine" {
  source                = "./modules/virtual_machine"
  vm_name               = var.vm_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  network_interface_id  = module.network_interface.nic_id
  vm_size               = var.vm_size
  admin_username        = var.admin_username
  admin_password        = var.admin_password
}

module "sql_failover_group" {
  source              = "./modules/sql_failover_group"
  failover_group_name = "example-failover"
  resource_group_name = var.resource_group_name
  sql_server_name     = var.sql_server_name
  partner_server_id   = var.partner_server_id
}
