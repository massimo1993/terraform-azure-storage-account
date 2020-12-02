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

variable network_rules {
  type = object({
    name           = string
    default_action = string

    bypass_list = list(string)
    ip_rules    = list(string)

    subnets = list(object({
      resource_group  = string
      virtual_network = string
      subnet_name     = string
    }))
  })
}

variable container_names {
  type = list(string)
}
