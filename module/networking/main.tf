# resource "azurerm_network_security_group" "nsg_name" {
#   for_each = var.nsg
#   name = each.value.nsg_name
#   location = each.value.location
#   resource_group_name = each.value.resource_group_name
# }

# resource "azurerm_virtual_network" "vnet_name" {
#   for_each = var.vnet
#   name = each.value.name
#   location = each.value.location
#   resource_group_name = each.value.resource_group_name
#   address_space = each.value.address_space

# }

# resource "azurerm_subnet" "subnet_name" {
#   for_each = var.subnets
#   name = each.value.name
#   virtual_network_name = each.value.virtual_network_name
#   resource_group_name = each.value.resource_group_name
#   address_prefixes = each.value.address_prefixes
# }

