variable "project_id" {
  type        = string
  description = "Scaleway Project ID (SCW_DEFAULT_PROJECT_ID)"
  sensitive   = true
}

variable "common_tags" {
  description = "Common tags to apply to the instance."
  type        = map(string)
}
