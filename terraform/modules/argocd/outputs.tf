output "argocd_namespace" {
  description = "Namespace where Argo CD is installed."
  value       = var.argocd_namespace
}

output "argocd_release_name" {
  description = "Helm release name."
  value       = helm_release.argocd.name
}

output "argocd_chart_version" {
  description = "Installed Helm chart version."
  value       = helm_release.argocd.version
}

output "gitops_root_application_name" {
  description = "GitOps Root Application name."
  value       = var.gitops_root_application_name
}