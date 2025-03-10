module "sql_server" {
  source              = "./modules/sql_server"  
  resource_group_name = var.resource_group_name
  location            = var.location
  sql_server_name     = var.sql_server_name
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}

module "sql_database" {
  source              = "./modules/sql_database"
  sql_server_id       = module.sql_server.mssql_server_id
  sql_database_name   = var.sql_database_name
}

# module "sql_scripts" {
#   source              = "./modules/sql_scripts"
#   sql_server_name     = module.sql_server.sql_server_name
#   sql_database_name   = module.sql_database.sql_database_name
#   admin_username      = var.admin_username
#   admin_password      = var.admin_password
#   sql_script_path     = var.sql_script_path
# }
