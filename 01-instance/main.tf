resource "scaleway_instance_ip" "public_ip" {
  project_id = var.project_id
}

resource "scaleway_block_volume" "data" {
  project_id = var.project_id
  size_in_gb = local.instance_add_vol_size_in_gb
  iops       = local.instance_add_vol_iops
}

resource "scaleway_instance_security_group" "www" {
  project_id              = var.project_id
  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"

  inbound_rule {
    action   = "accept"
    port     = "22"
    ip_range = "0.0.0.0/0"
  }

  inbound_rule {
    action = "accept"
    port   = "80"
  }

  inbound_rule {
    action = "accept"
    port   = "443"
  }
}

resource "scaleway_instance_server" "web" {
  project_id = var.project_id
  type       = local.instance_type
  image      = local.instance_image

  tags = ["role=${local.instance_role}", "env=${local.instance_env}"]

  ip_id = scaleway_instance_ip.public_ip.id

  additional_volume_ids = [scaleway_block_volume.data.id]

  root_volume {
    size_in_gb = local.instance_root_vol_size_in_gb
  }

  security_group_id = scaleway_instance_security_group.www.id
}