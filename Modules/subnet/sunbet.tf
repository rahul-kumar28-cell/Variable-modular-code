resource "azurerm_subnet" "example" {
  name                 = var.subnet-name
  resource_group_name  = var.subnet-resource_group_name
  virtual_network_name = var.subnet-virtual_network_name
  address_prefixes     = var.subnet-address_prefixes
}


variable "subnet-name" {}
variable "subnet-resource_group_name" {}
variable "subnet-virtual_network_name" {}
variable "subnet-address_prefixes" {}