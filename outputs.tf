output "sql_server_name" {
  description = "The name of the Azure SQL Server"
  value       = module.sql_server.sql_server_name
}

output "sql_database_name" {
  description = "The name of the Azure SQL Database"
  value       = module.sql_database.sql_database_name
}

output "sql_server_admin_username" {
  description = "The administrator username for the SQL Server"
  value       = module.sql_server.admin_username
}

# output "sql_script_status" {
#   description = "Status of the SQL script execution"
#   value       = module.sql_scripts.sql_script_execution_status
# }