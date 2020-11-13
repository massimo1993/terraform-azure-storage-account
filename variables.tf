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

  description = "Info object used to construct naming convention for storage account."
}

variable tags {
  type        = map(string)
  description = "Tags object used to tag storage account."
}

variable resource_group {
  type        = string
  description = "Name of the resource group where the storage account will be deployed."
}

variable region {
  type        = string
  description = "Region where all the storage account will be created."
}

variable account_kind {
  type        = string
  description = "Defines the Kind of account."

  default = "StorageV2"
}

variable account_tier {
  type        = string
  description = "Defines the tier to use for the storage account"

  default = "Standard"
}

variable account_replication_type {
  type        = string
  description = "Defines the type of replication to use for the storage account."

  default = "LRS"
}

variable access_tier {
  type        = string
  description = "Defines the access tier for storage accounts."

  default = "Hot"
}

variable https_traffic_only {
  type        = bool
  description = "Only accept requests from secure connections via HTTPS."

  default = true
}

variable min_tls_version {
  type        = string
  description = "The minimum supported TLS version for the storage account."

  default = "TLS1_2"
}

variable allow_public_access {
  type        = bool
  description = "Should public access be allowed to all blobs or containers."

  default = false
}

variable large_file_share_enabled {
  type        = bool
  description = "Determines if large file share is enabled."

  default = false
}

variable is_hns_enabled {
  type        = bool
  description = "Determines if data lake storage gen 2 hierarchical namespace is enabled."

  default = false
}

variable default_action {
  type        = string
  description = "The default action for the firewall used by the storage account."

  default = "Deny"
}

variable bypass_list {
  type        = list(string)
  description = "Specifies whether traffic is bypassed for Logging/Metrics/AzureServices."

  default = ["AzureServices"]
}

variable ip_whitelist {
  type        = list(string)
  description = "List of public IP or IP ranges in CIDR Format to allow."

  default = []
}

variable subnet_whitelist {
  type = list(object({
    resource_group  = string
    virtual_network = string
    subnet          = string
  }))

  description = "List of objects that contains information to look up a subnet. This is a whitelist of subnets to allow for the storage account."
  default     = []
}

variable container_names {
  type        = list(string)
  description = "List of container names to provision."

  default = []
}

variable access_type {
  type        = string
  description = "The access level configured for the container."

  default = "private"
}

variable file_mapping {
  type = list(object({
    path      = string
    pattern   = string
    container = string
  }))

  description = "List of objects that contains file mapping for uploading blobs."
}

variable type {
  type        = string
  description = "The type of blob storage to create."

  default = "Block"
}

variable size {
  type        = number
  description = "Used only for page blobs to specify the size in bytes of the blob to be created."

  default = 0
}

variable blob_access_tier {
  type        = string
  description = "The access tier of the blob storage."

  default = "Hot"
}

variable content_type {
  type        = string
  description = "The content type of the blob storage."

  default = "application/octet-stream"
}
