resource_group = {
  rg1 = {
    name = "rg_dev"
    location = "west us"
    tags = {
        environment = "dev"
    }
    
  }
  rg2 = {
    name = "rg_prod"
    location = "east us"
    tags = {
        environment = "prod"
    }
  }
}
