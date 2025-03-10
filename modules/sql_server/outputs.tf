output "sql_server_name" {
  description = "The name of the Azure SQL Server"
  value       = azurerm_mssql_server.example.name
}

output "admin_username" {
  description = "The administrator username for the SQL Server"
  value       = azurerm_mssql_server.example.administrator_login
}

output "mssql_server_id" {
  description = "The ID of the SQL Server"
  value       = azurerm_mssql_server.example.id
}