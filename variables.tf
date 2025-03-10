##### To connect to the Azure ###############################
# variable "subscription_id" {
#   description = "The Azure subscription ID"
#   type        = string
# }

# variable "client_id" {
#   description = "The Azure client ID"
#   type        = string
# }

# variable "client_secret" {
#   description = "The Azure client secret"
#   type        = string
# }

# variable "tenant_id" {
#   description = "The Azure tenant ID"
#   type        = string
# }
variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
  default = "95eba7e9-db83-4900-a7a9-695be8543900"
}

variable "client_id" {
  description = "The Azure client ID"
  type        = string
  default = "8778c87a-82d8-4950-9cac-36609e466085"
}

variable "client_secret" {
  description = "The Azure client secret"
  type        = string
  default = "uiE8Q~b9xzbEIu7fmT7QFB5ynWWK-A1EsnPeuapd"
}

variable "tenant_id" {
  description = "The Azure tenant ID"
  type        = string
  default = "3da2b7e8-16b9-4850-a1a1-cebdc35e74a0"
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
