resource "azurerm_sql_server_firewall_rule" "example" {
  name                = "AllowMyIP"
  resource_group_name = var.resource_group_name
  server_name         = var.sql_server_name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "255.255.255.255"
}

resource "azurerm_template_deployment" "sql_setup" {
  name                = "sql-setup-deployment"
  resource_group_name = var.resource_group_name
  template_content    = file("setup_sql_template.json")

  parameters = {
    sql_server_name   = var.sql_server_name
    sql_database_name = var.sql_database_name
    admin_username    = var.admin_username
    admin_password    = var.admin_password
    sql_script_path   = var.sql_script_path
  }

  depends_on = [
    azurerm_sql_server_firewall_rule.example
  ]
}
