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

variable file_share_names {
  type = list(string)
}

variable directory_mapping {
  type = list(object({
    share     = string
    directory = string
  }))
}
