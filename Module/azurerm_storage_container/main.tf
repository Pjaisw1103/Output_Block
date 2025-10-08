resource "azurerm_storage_container" "cntr" {
  name                  = var.cntr-name
  storage_account_id    = var.strg-id
  container_access_type = "private"
}

