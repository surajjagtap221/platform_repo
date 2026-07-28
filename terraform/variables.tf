# ==============================================================================
# Root Module Variables
# Enterprise DevSecOps Platform
# ==============================================================================

# ==============================================================================
# AWS Configuration
# ==============================================================================

variable "aws_profile" {
  description = "AWS CLI profile used by Terraform."
  type        = string
}

variable "aws_region" {
  description = "AWS region where the platform will be deployed."
  type        = string
}

# ==============================================================================
# Project Configuration
# ==============================================================================

variable "project_name" {
  description = "Project name used for resource naming and tagging."
  type        = string
  default     = "enterprise-devsecops"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
}

# ==============================================================================
# Argo CD Configuration
# ==============================================================================

variable "argocd_namespace" {
  description = "Namespace where Argo CD will be installed."
  type        = string
  default     = "argocd"
}

variable "argocd_release_name" {
  description = "Helm release name."
  type        = string
  default     = "argocd"
}

variable "argocd_chart_repository" {
  description = "Official Argo CD Helm repository."
  type        = string
  default     = "https://argoproj.github.io/argo-helm"
}

variable "argocd_chart_name" {
  description = "Argo CD Helm chart."
  type        = string
  default     = "argo-cd"
}

variable "argocd_chart_version" {
  description = "Argo CD Helm chart version."
  type        = string
  default     = "8.5.8"
}

# ==============================================================================
# GitOps Bootstrap Configuration
# ==============================================================================

variable "git_repository_url" {
  description = "Git repository containing the GitOps configuration."
  type        = string
}

variable "git_target_revision" {
  description = "Git branch, tag, or commit to deploy."
  type        = string
  default     = "main"
}

variable "gitops_root_path" {
  description = "Path to the GitOps root application."
  type        = string
  default     = "root"
}

variable "gitops_root_application_name" {
  description = "Name of the root Argo CD Application."
  type        = string
  default     = "gitops-root"
}