locals {
  # instance
  enable_public_ip       = true
  root_volume_size_in_gb = 20
  instance_type          = "STARDUST1-S"
  instance_image         = "ubuntu_jammy"

  # instance additional volume
  attach_additional_volume     = true
  additional_volume_size_in_gb = 1
  additional_volume_iops       = 5000 # available values: [5000, 15000]

  # instance security groups
  instance_allowed_ports = [22, 80, 443]
  instance_inbound_rules = [
    for port in local.instance_allowed_ports : {
      action   = "accept"
      port     = port
      ip_range = "0.0.0.0/0"
    }
  ]

  # instance tags
  instance_role = "frontend"
  instance_env  = "staging"
}
