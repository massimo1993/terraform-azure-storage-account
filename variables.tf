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

variable info {
  type = object({
    project     = string
    environment = string
    sequence    = string
  })

  description = "Info object used to construct naming convention for all resources."
}

variable tags {
  type        = map(string)
  description = "Tags object used to tag resources."
}

variable resource_group {
  description = "Name of the resource group where the storage account will be deployed."
}

variable region {
  description = "Region where all the resources will be created."
}

variable account_kind {
  description = "Defines the Kind of account."
  default     = "StorageV2"
}

variable account_tier {
  description = "Defines the tier to use for the storage account"
  default     = "Standard"
}

variable account_replication_type {
  description = "Defines the type of replication to use for the storage account."
  default     = "LRS"
}

variable access_tier {
  description = "Defines the access tier for storage accounts."
  default     = "Hot"
}

variable min_tls_version {
  description = "The minimum supported TLS version for the storage account."
  default     = "TLS1_2"
}

variable large_file_share_enabled {
  description = "Determines if large file share is enabled."
  value       = false
}

variable is_hns_enabled {
  description = "Determines if data lake storage gen 2 hierarchical namespace is enabled."
  default     = false
}

variable default_action {
  description = "The default action for the firewall used by the storage account."
  default     = "Deny"
}

variable bypass_list {
  description = "Specifies whether traffic is bypassed for Logging/Metrics/AzureServices."
  default     = ["AzureServices"]
}

variable ip_whitelist {
  description = "List of public IP or IP ranges in CIDR Format to allow."
  default     = []
}

variable subnet_whitelist {
  type = list(object({
    virtual_network_resource_group_name = string
    virtual_network_name                = string
    virtual_network_subnet_name         = string
  }))

  description = "List of objects that contains information to look up a subnet. This is a whitelist of subnets to allow for the storage account."
  default     = []
}

variable container_names {
  description = "List of container names to provision."
  default     = []
}

variable access_type {
  description = "The access level configured for the container."
  default     = "private"
}
