locals {
  file_mapping = flatten([
    for map in var.file_mapping : [
      for file in fileset(map.path, map.pattern) : {
        container = map.container
        path      = map.path
        filename  = file
      }
    ]
  ])
}

resource azurerm_storage_blob blob_storage {
  for_each = {
    for index, map in local.file_mapping : index => map
  }

  name                   = each.value.filename
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = each.value.container

  type = var.type
  size = var.size

  access_tier  = var.blob_access_tier
  content_type = var.content_type
  source       = "${each.value.path}/${each.value.filename}"
}

resource azurerm_storage_queue storage_queue {
  count = var.queue_enabled ? 1 : 0
  name  = var.queue_name

  storage_account_name = azurerm_storage_account.storage_account.name
}
