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

variable container_names {
  type = list(string)
}

variable file_mapping {
  type = list(object({
    path      = string
    pattern   = string
    container = string
  }))
}
