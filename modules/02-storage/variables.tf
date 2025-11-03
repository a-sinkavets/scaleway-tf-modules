variable "project_id" {
  type        = string
  description = "Scaleway Project ID (SCW_DEFAULT_PROJECT_ID)"
  sensitive   = true
}

variable "size_in_gb" {
  description = "The size of the block volume in GB."
  type        = number
}

variable "iops" {
  description = "The IOPS configuration for the block volume."
  type        = number
}

variable "common_tags" {
  description = "Common tags to apply to the instance."
  type        = map(string)
}
