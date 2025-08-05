module "vnet" {
  source                   = "../../Modules/VNET"
  vnet-name                = "main-vnet"
  vnet-location            = "central india"
  vnet-resource_group_name = "rg-jack"
  vnet-address_space       = ["10.0.0.0/16"]
}


module "f-subnet" {
  depends_on                  = [module.vnet]
  source                      = "../../Modules/subnet"
  subnet-name                 = "frontend-subnet"
  subnet-resource_group_name  = "rg-jack"
  subnet-virtual_network_name = "main-vnet"
  subnet-address_prefixes     = ["10.0.0.0/24"]
}


module "b-subnet" {
  depends_on                  = [module.vnet]
  source                      = "../../Modules/subnet"
  subnet-name                 = "backend-subnet"
  subnet-resource_group_name  = "rg-jack"
  subnet-virtual_network_name = "main-vnet"
  subnet-address_prefixes     = ["10.0.1.0/24"]
}

