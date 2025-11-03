resource "scaleway_block_volume" "data" {
  project_id = var.project_id
  size_in_gb = var.size_in_gb
  iops       = var.iops

  tags = var.common_tags != null ? [for k, v in var.common_tags : "${k}=${v}"] : []
}
