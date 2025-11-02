resource "scaleway_instance_server" "web" {
  project_id        = var.project_id
  type              = var.instance_type
  image             = var.instance_image
  security_group_id = var.instance_security_group_id

  root_volume {
    size_in_gb = var.root_volume_size_in_gb
  }

  ip_id                 = var.public_ip_id != null ? var.public_ip_id : ""
  additional_volume_ids = [var.additional_volume_id != null ? var.additional_volume_id : ""]

  tags = ["role=${var.instance_role}", "env=${var.instance_env}"]
}
