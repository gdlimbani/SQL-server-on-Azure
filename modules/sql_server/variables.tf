variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
  default = "gdl"
}

variable "location" {
  description = "The Azure Region where resources will be created"
  type        = string
  default     = "Central India"
}

variable "sql_server_name" {
  description = "The name of the Azure SQL Server"
  type        = string
  default = "gdl-sql-server"
}

variable "admin_username" {
  description = "The administrator username for the SQL server"
  type        = string
  default = "gdlsqluser"
}

variable "admin_password" {
  description = "The administrator password for the SQL server"
  type        = string
  sensitive   = true
}