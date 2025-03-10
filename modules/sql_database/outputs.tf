output "sql_database_name" {
  description = "The name of the SQL Database"
  value       = azurerm_mssql_database.example.name
}
