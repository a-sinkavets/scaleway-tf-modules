variable "access_key" {
  type        = string
  description = "Scaleway Access Key (SCW_ACCESS_KEY)"
  sensitive   = true
}

variable "secret_key" {
  type        = string
  description = "Scaleway Secret Key (SCW_SECRET_KEY)"
  sensitive   = true
}

variable "organization_id" {
  type        = string
  description = "Scaleway Organization ID (SCW_ORGANIZATION_ID)"
  sensitive   = true
}

variable "project_id" {
  type        = string
  description = "Scaleway Project ID (SCW_DEFAULT_PROJECT_ID)"
  sensitive   = true
}

variable "sc_zone" {
  type        = string
  default     = "pl-waw-2"
  description = "ScaleWay zone that will be used as default value for all resources ()SCW_DEFAULT_ZONE"

  validation {
    condition     = contains(["fr-par-1", "fr-par-2", "fr-par-3", "nl-ams-1", "nl-ams-2", "nl-ams-3", "pl-waw-1", "pl-waw-2", "pl-waw-3"], var.sc_zone)
    error_message = "Valid values for var: sc_zone are ('fr-par-1', 'fr-par-2', 'fr-par-3', 'nl-ams-1', 'nl-ams-2', 'nl-ams-3', 'pl-waw-1', 'pl-waw-2', 'pl-waw-3')."
  }
}

variable "sc_region" {
  type        = string
  default     = "pl-waw"
  description = "ScaleWay region that will be used as default value for all resources (SCW_DEFAULT_REGION)"

  validation {
    condition     = contains(["fr-par", "nl-ams", "pl-waw"], var.sc_region)
    error_message = "Valid values for var: sc_region are ('fr-par', 'nl-ams', 'pl-waw')."
  }
}
