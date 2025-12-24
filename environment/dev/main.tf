module "rg_group" {
  source = "../../module/azurerm_resource_group"
  resource_group = var.resource_group
}