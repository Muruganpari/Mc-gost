resource "azurerm_sql_server" "server" {
  name                         = var.server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_password
  # other SQL Server configurations
}

output "server_name" {
  value = azurerm_sql_server.server.name
}
