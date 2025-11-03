module "instance" {
  source     = "./modules/01-instance"
  project_id = var.project_id

  root_volume_size_in_gb     = local.root_volume_size_in_gb
  additional_volume_id       = local.attach_additional_volume ? module.block_volume[0].id : null
  public_ip_id               = local.enable_public_ip ? module.network[0].public_ip_id : null
  instance_security_group_id = module.security.id
  instance_type              = local.instance_type
  instance_image             = local.instance_image
  common_tags                = var.common_tags
}

module "security" {
  source        = "./modules/04-security"
  project_id    = var.project_id
  inbound_rules = local.instance_inbound_rules
  common_tags   = var.common_tags
}

module "block_volume" {
  source     = "./modules/02-storage"
  count      = local.attach_additional_volume ? 1 : 0
  project_id = var.project_id

  size_in_gb  = local.additional_volume_size_in_gb
  iops        = local.additional_volume_iops
  common_tags = var.common_tags
}

module "network" {
  source      = "./modules/03-network"
  count       = local.enable_public_ip ? 1 : 0
  project_id  = var.project_id
  common_tags = var.common_tags
}
