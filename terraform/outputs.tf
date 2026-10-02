output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "server_name" {
  value = azurerm_postgresql_flexible_server.this.name
}

output "host" {
  value = azurerm_postgresql_flexible_server.this.fqdn
}

output "port" {
  value = 5432
}

output "database_name" {
  value = azurerm_postgresql_flexible_server_database.this.name
}

output "connection_string" {
  value     = "host=${azurerm_postgresql_flexible_server.this.fqdn} port=5432 dbname=${azurerm_postgresql_flexible_server_database.this.name} user=${var.postgresql_admin_username} sslmode=require"
  sensitive = true
}
