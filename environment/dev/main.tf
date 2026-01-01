module "rg_group" {
  source         = "../../module/azurerm_resource_group"
  resource_group = var.resource_group
}

# module "nsg" {
#   source = "../../module/networking"
#   nsg    = var.nsg
#   depends_on = [ module.rg_group ]
# }

module "vnet" {
  source     = "../../module/azurerm_vnet"
  vnet       = var.vnet
  depends_on = [module.rg_group]
}

module "subnets" {
  source     = "../../module/subnet"
  subnets    = var.subnets
  depends_on = [module.vnet]

}

module "public_ip" {
  source    = "../../module/public_ip"
  public_ip = var.public_ip
}

module "nic" {
  source = "../../module/azurerm_compute"
  nics   = var.nics
  vms    = var.vms
}

module "vms" {
  source = "../../module/azurerm_compute"
  nics   = var.nics
  vms    = var.vms
}
 