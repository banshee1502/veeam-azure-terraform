variable rgprod_name {
  type        = string
  default     = "<prod rg name>"
  description = "Name of the Resource Group where backup data will reside"
}

variable rgstaging_name {
  type        = string
  default     = "<staging rg name>"
  description = "Name of the Resource Group where test restores shall occur"
}

variable rg_location {
  type        = string
  default     = "<rg location>"
  description = "location of the resourcegroup"
}
