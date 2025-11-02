module "instance" {
  source     = "./modules/01-instance"
  project_id = var.project_id

  root_volume_size_in_gb     = local.root_volume_size_in_gb
  additional_volume_id       = module.block_volume[0].id
  public_ip_id               = module.network[0].public_ip_id
  instance_security_group_id = module.security.id
  instance_type              = local.instance_type
  instance_image             = local.instance_image
  instance_role              = local.instance_role
  instance_env               = local.instance_env
}

module "security" {
  source        = "./modules/04-security"
  project_id    = var.project_id
  inbound_rules = local.instance_inbound_rules
}

module "block_volume" {
  source     = "./modules/02-storage"
  count      = local.attach_additional_volume ? 1 : 0
  project_id = var.project_id

  size_in_gb = local.additional_volume_size_in_gb
  iops       = local.additional_volume_iops
}

module "network" {
  source     = "./modules/03-network"
  count      = local.enable_public_ip ? 1 : 0
  project_id = var.project_id
}
