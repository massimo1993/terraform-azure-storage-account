info = {
  project     = "Gemini"
  environment = "Dev"
  sequence    = "001"
}

tags = {
  source  = "Terraform"
  owner   = "Massimo Cannavo"
}

region = "South Central US"

network_rules = {
  allow-snet-dev-033 = {
    default_action = "Deny"
    bypass_list    = ["AzureServices"]

    ip_rules = []

    subnets = {
      resource_group  = "rg-vnet-dev-001"
      virtual_network = "vnet-dev-001"
      subnet_name     = "snet-dev-033"
    }
  }
}

container_names = ["stocks", "covid"]
