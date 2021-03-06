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
    for file in local.file_mapping : file.filename => file
  }

  name                   = each.value.filename
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = each.value.container

  type = var.blob_type
  size = var.blob_size

  access_tier  = var.blob_access_tier
  content_type = var.blob_content_type
  source       = "${each.value.path}/${each.value.filename}"

  depends_on = [azurerm_storage_container.container]
}
