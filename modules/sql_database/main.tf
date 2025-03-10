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

resource "null_resource" "execute_sql" {
  depends_on = [
    azurerm_mssql_database.example
  ]

  //This provisioner executing with sqlcmd need to be installed in windows machine or on the jenkins server machine.
  provisioner "local-exec" {
    command = <<EOT
      sqlcmd -S ${var.sql_server_name}.database.windows.net -d ${var.sql_database_name} -U ${var.admin_username} -P ${var.admin_password} -i ./modules/sql_database/sql_script.sql > sqlcmd_output.log 2>&1
      REM Check if sqlcmd encountered any error (non-zero exit code)
      IF %ERRORLEVEL% NEQ 0 (
        echo SQL command failed with exit code %ERRORLEVEL%. Check sqlcmd_output.log for details.
        exit /b %ERRORLEVEL%
      )
    EOT
  }
}