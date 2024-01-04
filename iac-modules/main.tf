

module "sql_server" {
  source                = "./modules/sql_server"
  resource_group_name   = var.resource_group_name
  server_name           = var.sql_server_name
  location              = var.location
  administrator_login   = var.administrator_login
  administrator_password = var.administrator_password
  version               = var.sql_server_version
}

module "database" {
  source                = "./modules/database"
  resource_group_name   = var.resource_group_name
  server_name           = module.sql_server.server_name
  database_name         = var.database_name
  location              = var.location
  edition               = var.database_edition
  max_size_gb           = var.database_max_size_gb
  collation             = var.database_collation
}
