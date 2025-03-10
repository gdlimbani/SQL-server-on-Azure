resource "azurerm_mssql_server" "example" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
  
  tags = {
    environment = "development"
    "created by" = "Gautam Limbani"
  }
}

resource "azurerm_mssql_firewall_rule" "example" {
  depends_on = [ azurerm_mssql_server.example ]
  name                = "AllowMyIP"
  server_id = azurerm_mssql_server.example.id
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "255.255.255.255"
}