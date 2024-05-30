module "example" {
  source              = "./examplemodule/"
  resource_group_name = local.resource_group_name
  location = local.location
  vnet_name = local.vnet_name
  address_space = local.address_space
  subnet_name = local.subnet_name
  address_prefixes = local.address_prefixes
}
