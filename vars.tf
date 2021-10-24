# Basic
variable cluster_name {
  type        = string
  default     = ""
  description = "description"
}

variable cluster_random {
  type        = string
  default     = ""
  description = "description"
}

variable cluster_groups {
  type        = list(string)
  default     = []
  description = "description"
}


variable vms_ip {
  type        = list(string)
  default     = []
  description = "description"
}

variable vms_fqdn {
  type        = list(string)
  default     = []
  description = "description"
}

variable ansible_inventory_path {
  type        = string
  default     = "./"
  description = "description"
}
