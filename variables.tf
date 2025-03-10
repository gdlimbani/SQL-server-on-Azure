##### To connect to the Azure ###############################
variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
}

variable "client_id" {
  description = "The Azure client ID"
  type        = string
}

variable "client_secret" {
  description = "The Azure client secret"
  type        = string
}

variable "tenant_id" {
  description = "The Azure tenant ID"
  type        = string
}
##### To connect to the Azure ###############################

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

variable "sql_database_name" {
  description = "The name of the SQL database"
  type        = string
  default = "gdl-sql-db"
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

variable "sql_script_path" {
  description = "The local path to the SQL script file"
  type        = string
  default = "./create_db.sql"
}
