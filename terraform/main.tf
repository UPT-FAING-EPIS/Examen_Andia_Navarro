resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_postgresql_flexible_server" "this" {
  name                          = var.postgresql_server_name
  location                      = azurerm_resource_group.this.location
  resource_group_name           = azurerm_resource_group.this.name
  version                       = "15"
  administrator_login           = var.postgresql_admin_username
  administrator_password        = var.postgresql_admin_password
  zone                          = "1"
  storage_mb                    = 32768
  sku_name                      = var.postgresql_sku_name
  public_network_access_enabled = true

  depends_on = [azurerm_resource_group.this]
}

resource "azurerm_postgresql_flexible_server_database" "this" {
  name      = var.postgresql_database_name
  server_id = azurerm_postgresql_flexible_server.this.id
  charset   = "UTF8"
  collation = "en_US.utf8"
}
