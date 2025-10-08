resource "azurerm_storage_account" "strg" {
  name                     = var.strg-name
  resource_group_name      = var.rg-name
  location                 = var.strg-location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

