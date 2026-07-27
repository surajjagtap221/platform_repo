module "bootstrap" {
  source = "./modules/bootstrap"

  argocd_namespace = var.argocd_namespace
}

module "argocd" {
  source = "./modules/argocd"

  argocd_namespace = module.bootstrap.argocd_namespace

  git_repository_url = var.git_repository_url

  depends_on = [
    module.bootstrap
  ]
}