resource "scaleway_block_volume" "data" {
  project_id = var.project_id
  size_in_gb = var.size_in_gb
  iops       = var.iops
}
