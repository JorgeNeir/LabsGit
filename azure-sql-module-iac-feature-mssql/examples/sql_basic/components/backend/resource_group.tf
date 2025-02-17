resource "azurerm_resource_group" "this" {
  name     = "rg_test${var.unique_id}"
  location = "eastus2"

  tags = {
    Deploy        = "PaaS"
    CostCenter    = "9999"
    Payer         = "COE"
    Payment_type  = "INERCIAL"
    Proyecto      = "AZURE"
    Ambiente      = "Sandboox"
    DuenoServicio = "COE"
    Initial_date  = "20231212"
    FechaInicio   = "31052024"
  }
}
