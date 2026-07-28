
# ==============================================================================
# Enterprise DevSecOps Platform
# Environment Configuration
# ==============================================================================

# ==============================================================================
# AWS Configuration
# ==============================================================================

aws_profile = "devsecops-admin"
aws_region  = "us-east-1"

# ==============================================================================
# Platform Configuration
# ==============================================================================

project_name = "enterprise-devsecops"
environment  = "dev"

# ==============================================================================
# Argo CD Configuration
# ==============================================================================

argocd_namespace = "argocd"

argocd_release_name = "argocd"

argocd_chart_repository = "https://argoproj.github.io/argo-helm"

argocd_chart_name = "argo-cd"

argocd_chart_version = "8.5.8"

# ==============================================================================
# GitOps Bootstrap
# ==============================================================================

git_repository_url = "https://github.com/surajjagtap221/gitops_repo.git"

git_target_revision = "main"

gitops_root_path = "root"

gitops_root_application_name = "gitops-root"