variable info {
  type = object({
    project     = string
    environment = string
    sequence    = string
  })
}

variable tags {
  type = map(string)
}

variable region {
  type = string
}

variable table_names {
  type = list(string)
}

variable table_mapping {
  type = list(object({
    table         = string
    partition_key = string
    row_key       = string
    file          = string
  }))
}
