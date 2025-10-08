module "azurerm-rg" {
  source      = "../../Module/azurerm_resource_group"
  rg-name     = "demo-rg"
  rg-location = "CentralIndia"
}

module "azurerm-strg" {
  source        = "../../Module/azurerm_storage_account"
  strg-name     = "demostrg"
  rg-name       = "demo-rg"
  strg-location = "CentralIndia"
}

module "azurerm-cntr" {
  source    = "../../Module/azurerm_storage_container"
  cntr-name = "democntr"
  strg-id   = module.azurerm-strg.strg-id
}