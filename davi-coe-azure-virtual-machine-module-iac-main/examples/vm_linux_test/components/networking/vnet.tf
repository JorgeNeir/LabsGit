resource "azurerm_virtual_network" "this" {
  name                = "vnetTestaks"
  address_space       = ["10.1.0.0/16"]
  location            = "eastus2"
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "sub" {
  name                 = "subnetTestaks"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.1.0.0/18"]
}
