resource "azurerm_sql_database" "database" {
  name                = var.database_name
  resource_group_name = var.resource_group_name
  server_name         = var.server_name
  location                     = var.location
  edition             = var.edition
  max_size_gb         = var.max_size_gb
  collation           = var.collation
  # other database configurations
}
