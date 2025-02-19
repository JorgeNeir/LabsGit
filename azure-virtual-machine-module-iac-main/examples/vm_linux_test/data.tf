data "azurerm_shared_image" "this" {
  provider            = azurerm.transversales
  name                = "02I-PLANTILLARHEL8STD-P01"
  gallery_name        = "02P_IMAGES_P01"
  resource_group_name = "RG-AD_DNS-PRD"
}
