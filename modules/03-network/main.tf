resource "scaleway_instance_ip" "public_ip" {
  project_id = var.project_id

  tags = var.common_tags != null ? [for k, v in var.common_tags : "${k}=${v}"] : []
}
