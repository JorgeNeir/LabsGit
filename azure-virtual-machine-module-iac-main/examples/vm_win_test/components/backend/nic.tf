resource "azurerm_network_interface" "this" {
  name                = "test-nic"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id_win
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface" "this2" {
  name                = "test-nic2"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  ip_configuration {
    name                          = "internal2"
    subnet_id                     = var.subnet_id_win
    private_ip_address_allocation = "Dynamic"
  }
}
