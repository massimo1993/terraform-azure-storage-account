# Environment variables should be used for authentication.
#
# ARM_SUBSCRIPTION_ID
# ARM_CLIENT_ID
# ARM_CLIENT_SECRET
# ARM_TENANT_ID
#
# Reference the Azure Provider documentation for more information.
#
# https://www.terraform.io/docs/providers/azurerm/index.html

provider azurerm {
  features {}
}

module resource_group {
  source  = "massimo1993/resource-group/azure"
  version = "0.0.3"

  info = var.info
  tags = var.tags

  region = var.region
}

module storage_account {
  source  = "massimo1993/storage-account/azure"
  version = "0.0.3"

  info = var.info
  tags = var.tags

  resource_group = module.resource_group.name
  region         = var.region

  table_names   = var.table_names
  table_mapping = var.table_mapping
}
