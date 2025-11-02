output "public_ip_id" {
  description = "The ID of the instance IP."
  value       = scaleway_instance_ip.public_ip.id
}
