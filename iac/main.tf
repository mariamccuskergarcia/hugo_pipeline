locals {
  prefix = format("ce%02d_%s_%s_rg", var.cohortid, var.environment, var.cloud_id)
}

terraform {
  backend "azurerm" {

  }
}
# the above is to store terraform remotely

resource "azurerm_resource_group" "mmg_hugo_rg" {
  name     = local.prefix
  location = var.location
}

module "mmg_hugo_sa" {
  source                = "git::https://kubrick-training@dev.azure.com/kubrick-training/ce06/_git/terraform_storage_account"
  target_resource_group = azurerm_resource_group.mmg_hugo_rg.name
  cloudid               = var.cloud_id
  environment           = var.environment
  prefix                = var.prefix
  cohortid              = format("ce%02d", var.cohortid)
  pod                   = var.pod
  user_write_access     = var.user_write_access

  depends_on = [
    azurerm_resource_group.mmg_hugo_rg
  ]
}


