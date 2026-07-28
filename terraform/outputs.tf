output "platform_environment" {
  value = var.environment
}

output "platform_project_name" {
  value = var.project_name
}

output "argocd_namespace" {
  value = module.bootstrap.argocd_namespace
}

output "argocd_release_name" {
  value = module.argocd.argocd_release_name
}

output "argocd_chart_version" {
  value = module.argocd.argocd_chart_version
}