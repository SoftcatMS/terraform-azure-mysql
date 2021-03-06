module "mysql_example" {
  source = "github.com/SoftcatMS/terraform-azure-mysql"

  name                = "mysql-example"
  location            = azurerm_resource_group.rg-mysql-example.location
  resource_group_name = azurerm_resource_group.rg-mysql-example.name
  random_suffix       = false

  administrator_login          = "example_admin"
  administrator_login_password = var.password # base64 encoded password

  sku_name   = "GP_Gen5_2"
  storage_mb = 5120

  tags = {
    environment = "example"
    engineer    = "ci/cd"
  }

}
