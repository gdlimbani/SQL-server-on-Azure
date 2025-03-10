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
  default = "123abc!@#ABC"
}

variable "sql_script_path" {
  description = "The local path to the SQL script file"
  type        = string
  default = "./create_db.sql"
}