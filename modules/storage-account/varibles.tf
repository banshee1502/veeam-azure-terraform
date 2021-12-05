variable storageaccountname {
  type        = string
  default     = "<name of storage account>"
  description = "Name of the storage account for Veeam Azure Backups."
}

variable location {
  type        = string
  default     = "<location of storage account."
  description = "Location of the storage account."
}

variable account_replication_type {
  type        = string
  default     = "GRS"
  description = "Local or Global/Zone redudant storage."
}

variable delete_retention_policy {
  type        = number
  default     = "2"
  description = "Number of days until hard-delete."
}
