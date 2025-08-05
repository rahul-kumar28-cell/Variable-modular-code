resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet-name
  location            = var.vnet-location
  resource_group_name = var.vnet-resource_group_name
  address_space       = var.vnet-address_space
}

variable "vnet-name"  {}
variable "vnet-location" {}
variable "vnet-resource_group_name" {}
variable "vnet-address_space" {}