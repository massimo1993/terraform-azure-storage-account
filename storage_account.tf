locals {
  env = lower(substr(var.info.environment, 0, 1))

  name   = module.naming.storage_account.name
  length = module.naming.storage_account.max_length - 4
  prefix = substr(local.name, 0, local.length)

  ip_addresses = [
    for ip in var.ip_whitelist :
      replace(ip, "/32", "")
  ]

  current_ip   = [chomp(data.http.ip_address.body)]
  ip_whitelist = concat(local.ip_addresses, local.current_ip)

  subnet_whitelist = [
    for subnet in data.azurerm_subnet.subnet : subnet.id
  ]
}

resource azurerm_storage_account storage_account {
  name = format("%s%s%03d", local.prefix, local.env, var.info.sequence)

  resource_group_name = var.resource_group
  location            = var.region

  account_kind             = var.account_kind
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  access_tier     = var.access_tier        
  min_tls_version = var.min_tls_version

  large_file_share_enabled = var.large_file_share_enabled
  is_hns_enabled           = var.is_hns_enabled

  tags = local.tags
}

resource azurerm_storage_account_network_rules network_rules {
  resource_group_name  = var.resource_group
  storage_account_name = azurerm_storage_account.storage_account.name

  default_action = var.default_action
  bypass         = var.bypass_list

  ip_rules                   = local.ip_whitelist
  virtual_network_subnet_ids = local.subnet_whitelist
}

resource azurerm_storage_container container {
  count = length(var.container_names)

  name                  = var.container_names[count.index]
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = var.access_type
}
