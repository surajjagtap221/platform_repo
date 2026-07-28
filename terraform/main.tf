# ==============================================================================
# Enterprise DevSecOps Platform
# Root Module
#
# Purpose:
#   1. Create the Argo CD namespace.
#   2. Install Argo CD via Helm.
#   3. Bootstrap the GitOps Root Application.
# ==============================================================================

# ==============================================================================
# Bootstrap Module
# Creates the namespace required before installing Argo CD.
# ==============================================================================

module "bootstrap" {
  source = "./modules/bootstrap"

  argocd_namespace = var.argocd_namespace
}

# ==============================================================================
# Argo CD Module
# Installs Argo CD and bootstraps the GitOps Root Application.
# ==============================================================================

module "argocd" {
  source = "./modules/argocd"

  # ---------------------------------------------------------------------------
  # Namespace
  # ---------------------------------------------------------------------------
  argocd_namespace = module.bootstrap.argocd_namespace

  # ---------------------------------------------------------------------------
  # Helm Configuration
  # ---------------------------------------------------------------------------
  argocd_release_name     = var.argocd_release_name
  argocd_chart_repository = var.argocd_chart_repository
  argocd_chart_name       = var.argocd_chart_name
  argocd_chart_version    = var.argocd_chart_version

  # ---------------------------------------------------------------------------
  # GitOps Bootstrap
  # ---------------------------------------------------------------------------
  git_repository_url           = var.git_repository_url
  git_target_revision          = var.git_target_revision
  gitops_root_path             = var.gitops_root_path
  gitops_root_application_name = var.gitops_root_application_name

  depends_on = [
    module.bootstrap
  ]
}