variable "argocd_namespace" {
  description = "Namespace whare Argo CD will be installed"
  type        = string
  default     = "argocd"
}
variable "argocd_release_name" {
  description = "Helm release name for Argo CD"
  type        = string
  default     = "argocd"
}
variable "argocd_chart_repository" {
  description = "Official Argo CD Helm repository"
  type        = string
  default     = "https://argoproj.github.io/argo-helm"
}
variable "argocd_chart_name" {
  description = "Argo CD Helm chart name"
  type        = string
  default     = "argo-cd"
}
variable "argocd_chart_version" {
  description = "Argo CD Helm Chart Version"
  type        = string
  default     = "8.5.8"
}
variable "git_repository_url" {
  description = "Git repository containing the platform GitOps configuration."
  type        = string
  default = "https://github.com/surajjagtap221/gitops_repo.git"
}
variable "git_target_revision" {
  description = "Git branch, tag, or commit used by the root application."
  type        = string
  default     = "main"
}
variable "gitops_root_path" {
  description = "Path to the GitOps root application."
  type        = string
  default     = "root"
}
variable "gitops_root_application_name" {
  description = "Name of the Argo CD root application."
  type        = string
  default     = "gitops-root"
}