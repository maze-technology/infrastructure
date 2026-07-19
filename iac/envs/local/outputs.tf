output "cluster_domain" {
  description = "Base domain for cluster services"
  value       = module.infrastructure_base.cluster_domain
}

output "service_urls" {
  description = "Service URLs (VPN + /etc/hosts → ClusterIPs; trust Maze CA or accept browser warning)"
  value       = module.infrastructure_base.service_urls
}

output "maze_ca_install_hint" {
  description = "How to export the Maze CA for trusting local HTTPS (optional)"
  value       = module.infrastructure_base.maze_ca_install_hint
}

output "etc_hosts" {
  description = "Lines to add to /etc/hosts — replace VPS_IP with your server public IP"
  value       = module.infrastructure_base.etc_hosts
}

output "wireguard_peer_config_command" {
  description = "Retrieve WireGuard config for bootstrap admin (run on machine with kubectl access)"
  value       = module.infrastructure_base.wireguard_peer_config_command
}

output "cosign_vault_path" {
  description = "Vault path for cosign signing keys (private_key, public_key, password)"
  value       = module.infrastructure_base.cosign_vault_path
}

output "cosign_ci_scope" {
  description = "COSIGN_* CI variables are instance-level (available to all projects)"
  value       = module.infrastructure_base.cosign_ci_scope
}

output "gitlab_org_group" {
  description = "GitLab org group shared with engineers"
  value       = module.infrastructure_base.gitlab_org_group
}

output "kyverno_signed_images_label" {
  description = "Label namespaces with this to require cosign-verified images from the Maze registry"
  value       = module.infrastructure_base.kyverno_signed_images_label
}

output "bootstrap_credentials" {
  description = "Initial credentials — day-to-day login is Keycloak SSO; Keycloak master + Vault token are break-glass only"
  sensitive   = true
  value       = module.infrastructure_base.bootstrap_credentials
}

output "backup_schedule" {
  description = "Velero schedule when backups are enabled (local RGW smoke target)"
  sensitive   = true
  value       = module.infrastructure_base.backup_schedule
}
