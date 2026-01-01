resource_group = {
  rg1 = {
    name     = "rg_dev"
    location = "west us"
    tags = {
      environment = "dev"
    }

  }
}

# nsg = {
#   nsg1 = {
#     name                = "dev_nsg"
#     location            = "westus"
#     resource_group_name = "rg_dev"
#     virtual_network_name = "dev_vnet"
#   }

# }

vnet = {
  "vnet1" = {
    name                = "dev_vnet"
    location            = "westus"
    resource_group_name = "rg_dev"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  "subnet1" = {
    name                 = "frotend_subnet"
    virtual_network_name = "dev_vnet"
    resource_group_name  = "rg_dev"
    address_prefixes     = ["10.0.1.0/24"]
  }
  # "subnet2" = {
  #   name                 = "backend_subnet"
  #   virtual_network_name = "dev_vnet"
  #   resource_group_name  = "rg_dev"
  #   address_prefixes     = ["10.0.2.0/24"]
  # }

}


public_ip = {
  "pip" = {
    name                = "dev_pip"
    location            = "westus"
    resource_group_name = "rg_dev"
    allocation_method   = "Dynamic"
  }
}

nics = {
  nic1 = {
    name                = "frontend-nic"
    location            = "westus"
    resource_group_name = "rg_dev"
    # subnet_id            = module.subnet.subnet_ids["frontend_subnet"]
    # public_ip_id         = module.public_ip.public_ip_ids["frontend"]
  }

  nic2 = {
    name                = "backend-nic"
    location            = "westus"
    resource_group_name = "rg_dev"
    # subnet_id            = module.subnet.subnet_ids["backend_subnet"]
    # public_ip_id         = null
  }
}


vms = {
  "vm1" = {
    name                = "frontend_vm"
    location            = "westus"
    resource_group_name = "rg_dev"
    size                = "Standard_B1s"
    admin_username      = "username"
    admin_password      = "Password@1234"

  }
}

