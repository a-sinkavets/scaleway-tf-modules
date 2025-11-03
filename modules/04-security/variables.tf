variable "project_id" {
  type        = string
  description = "Scaleway Project ID (SCW_DEFAULT_PROJECT_ID)"
  sensitive   = true
}

variable "inbound_rules" {
  description = "List of inbound rules for the security group"
  type = list(object({
    action   = string
    port     = string
    ip_range = string
  }))
}

variable "common_tags" {
  description = "Common tags to apply to the instance."
  type        = map(string)
}
