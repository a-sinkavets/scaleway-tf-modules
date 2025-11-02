output "instance_public_ip" {
  value       = scaleway_instance_server.web.public_ips
  description = "IP of server"
}
