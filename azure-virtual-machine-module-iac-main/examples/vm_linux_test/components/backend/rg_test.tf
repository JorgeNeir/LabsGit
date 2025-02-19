resource "azurerm_resource_group" "this" {
  name     = "rg_test${var.unique_id}"
  location = "eastus2"

  tags = {
    cloud_provider   = "aws"
    retention_policy = "3m"
    environment      = "production"
    owner            = "canales_digitales_persona_juridica"
    cost_center      = "2234"
    service_type     = "iaas"
    created_by       = "terraform"
    billing_type     = "inertial"
    project          = "portales_empresariales"
    start_date       = "12-03-2024"
    region           = "us-east-1"
    team             = "acla"
  }
}
