variable "project_id" {
  type        = string
  description = "Scaleway Project ID (SCW_DEFAULT_PROJECT_ID)"
  sensitive   = true
}

variable "additional_volume_id" {
  description = "ID of an existing block volume to attach to the instance."
  type        = string
  default     = null
}

variable "public_ip_id" {
  description = "ID of an existing public IP to attach to the instance."
  type        = string
  default     = null
}

variable "root_volume_size_in_gb" {
  description = "Size of the root volume in GB."
  type        = number
  default     = 20
}

variable "instance_security_group_id" {
  description = "ID of the security group to associate with the instance."
  type        = string
}

variable "instance_type" {
  description = "Type of the instance to create."
  type        = string
  default     = "STARDUST1-S"
}

variable "instance_image" {
  description = "Image of the instance to create."
  type        = string
  default     = "ubuntu_jammy"
}

variable "instance_role" {
  description = "Role tag for the instance."
  type        = string
}

variable "instance_env" {
  description = "Environment tag for the instance."
  type        = string
}
