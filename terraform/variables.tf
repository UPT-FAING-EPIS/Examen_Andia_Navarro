variable "location" {
  description = "Azure region for the PostgreSQL deployment."
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string
  default     = "rg-bi-examen"
}

variable "postgresql_server_name" {
  description = "Name of the Azure PostgreSQL Flexible Server."
  type        = string
  default     = "pg-bi-examen-dev"
}

variable "postgresql_admin_username" {
  description = "Administrator username for PostgreSQL. Set via GitHub Secrets."
  type        = string
  sensitive   = true
}

variable "postgresql_admin_password" {
  description = "Administrator password for PostgreSQL. Set via GitHub Secrets."
  type        = string
  sensitive   = true
}

variable "postgresql_database_name" {
  description = "Database name for the BI project."
  type        = string
  default     = "bi_acogimiento"
}

variable "postgresql_sku_name" {
  description = "SKU used by the flexible PostgreSQL server."
  type        = string
  default     = "B_Standard_B1ms"
}
