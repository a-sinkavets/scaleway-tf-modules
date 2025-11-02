resource "scaleway_instance_security_group" "security_group" {
  project_id              = var.project_id
  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"

  dynamic "inbound_rule" {
    for_each = var.inbound_rules
    content {
      action   = inbound_rule.value.action
      port     = inbound_rule.value.port
      ip_range = inbound_rule.value.ip_range != null ? inbound_rule.value.ip_range : ""
    }
  }
}
