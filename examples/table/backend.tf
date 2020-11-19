terraform {
  backend "azurerm" {
    resource_group_name  = "rgMassimo"
    storage_account_name = "samassimo"
    container_name       = "tfstate"
    key                  = "storage-table.tfstate"
  }
}
