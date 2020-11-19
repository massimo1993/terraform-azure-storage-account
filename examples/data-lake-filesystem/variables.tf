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

variable data_lake_filesystem_names {
  type = list(string)
}
