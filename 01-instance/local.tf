locals {
  # instance additional volume
  instance_add_vol_size_in_gb = 1
  instance_add_vol_iops       = 5000
  # instance root volume
  instance_root_vol_size_in_gb = 20

  # instance
  instance_type  = "STARDUST1-S"
  instance_image = "ubuntu_jammy"

  # instance tags
  instance_role = "frontend"
  instance_env  = "staging"
}