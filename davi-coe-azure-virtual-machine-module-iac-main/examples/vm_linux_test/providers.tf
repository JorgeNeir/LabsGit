terraform {
  required_version = ">= 1.4.0, < 2.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.11, < 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azurerm" {
  features {}
  alias           = "transversales"
  subscription_id = "0947cdfc-4c3d-46d8-bf83-21fedbc5024f"
}

provider "azurerm" {
  features {}
  alias           = "sandbox"
  subscription_id = "dc894d04-698d-4f64-9e72-3b53114ebce9"
}
