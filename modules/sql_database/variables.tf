variable "sql_server_name" {
  description = "The name of the Azure SQL Server"
  type        = string
}

variable "admin_username" {
  description = "The administrator username for the SQL server"
  type        = string
}

variable "admin_password" {
  description = "The administrator password for the SQL server"
  type        = string
  sensitive   = true
}

variable "sql_database_name" {
  description = "The name of the SQL database"
  type        = string
  default = "gdl-sql-db"
}

variable "sql_server_id" {
  description = "The ID of the SQL Server"
  type        = string
}