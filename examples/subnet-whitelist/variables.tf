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

variable subnet_whitelist {
  type = list(object({
    resource_group  = string
    virtual_network = string
    subnet_name     = string
  }))
}

variable container_names {
  type = list(string)
}
