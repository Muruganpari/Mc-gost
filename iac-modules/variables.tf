variable "resource_group_name" {
  description = "The name of the Azure resource group."
}

variable "sql_server_name" {
  description = "The name of the Azure SQL Server."
}

variable "location" {
  description = "The Azure region in which the resources should be created."
}

variable "administrator_login" {
  description = "The administrator login for the Azure SQL Server."
}

variable "administrator_password" {
  description = "The administrator password for the Azure SQL Server."
}

variable "sql_server_version" {
  description = "The version of the Azure SQL Server."
}

variable "database_name" {
  description = "The name of the Azure SQL Database."
}

variable "database_edition" {
  description = "The edition of the Azure SQL Database."
}

variable "database_max_size_gb" {
  description = "The maximum size of the Azure SQL Database in gigabytes."
}

variable "database_collation" {
  description = "The collation of the Azure SQL Database."
}
