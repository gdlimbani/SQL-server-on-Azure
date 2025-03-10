resource "azurerm_mssql_database" "example" {
  name                = var.sql_database_name
  sku_name            = "S1"
  server_id           = var.sql_server_id
  collation           = "SQL_Latin1_General_CP1_CI_AS"
  
  tags = {
    environment = "development"
    "created by" = "Gautam Limbani"
  }
}
