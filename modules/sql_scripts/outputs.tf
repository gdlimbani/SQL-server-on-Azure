output "sql_script_status" {
  description = "Status of the SQL script execution"
  value       = azurerm_template_deployment.sql_script_deployment.status
}
