variable "aws_profile" {
  description = "AWS CLI profile used by Terraform."
  type        = string
}

variable "aws_region" {
  description = "AWS region where platform resources are deployed."
  type        = string
}

variable "project_name" {
  description = "Project name used for resource naming and tagging."
  type        = string
  default     = "enterprise-devsecops"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
}

variable "argocd_namespace" {
  description = "Namespace where Argo CD will be installed."
  type        = string
  default     = "argocd"
}

variable "argocd_chart_version" {
  description = "Argo CD Helm chart version."
  type        = string
}
variable "cluster_name" {
  type = string
}

variable "git_repository_url" {
  description = "Git repository containing the platform GitOps configuration."
  type        = string
}