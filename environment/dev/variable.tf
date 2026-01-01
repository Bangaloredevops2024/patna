variable "resource_group" {
  description = "A map of resource group configurations."
  type = map(object({
    name     = string
    location = string
    tags     = optional(map(string))
  }))
}

# variable "nsg" {
#   type = map(object({
#     name                = string
#     location            = string
#     resource_group_name = string
#     virtual_network_name = string

#   }))

# }

variable "vnet" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

variable "subnets" {
  type = map(object({
    name                 = string
    virtual_network_name = string
    resource_group_name  = string
    address_prefixes     = list(string)
  }))
}

variable "public_ip" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
  }))

}


variable "nics" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    # subnet_id            = string
    # public_ip_id         = optional(string)
  }))
}


variable "vms" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    size                = string
    admin_username      = string
    admin_password      = string

  }))

}




