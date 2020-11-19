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

terraform {
  required_version = "~> 0.13.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.35.0"
    }

    http = {
      source  = "hashicorp/http"
      version = "~> 2.0.0"
    }
  }
}

locals {
  project     = lower(var.info.project)
  environment = lower(var.info.environment)

  tags = merge(
    {
      for key, value in var.tags : lower(key) => lower(value)
    },
    {
      project     = local.project
      environment = local.environment
    }
  )
}

data http ip_address {
  url = "http://ipv4.icanhazip.com"
}

data azurerm_subnet subnet {
  for_each = {
    for key, value in var.subnet_whitelist : key => value
  }

  name                 = each.value.subnet
  virtual_network_name = each.value.virtual_network
  resource_group_name  = each.value.resource_group
}

module naming {
  source  = "Azure/naming/azurerm"
  version = "0.1.0"

  suffix = [local.project]
}
