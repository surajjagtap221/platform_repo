output "argocd_namespace" {
  description = "Namespace where Argo CD is installed."
  value       = var.argocd_namespace
}

output "argocd_release_name" {
  description = "Helm release name of the Argo CD installation."
  value       = helm_release.argocd.name
}

output "argocd_chart_version" {
  description = "Installed Argo CD Helm chart version."
  value       = helm_release.argocd.version
}

output "gitops_root_application_name" {
  description = "Name of the Argo CD GitOps root application."
  value       = var.gitops_root_application_name
}