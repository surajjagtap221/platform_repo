resource "helm_release" "argocd" {

  name       = var.argocd_release_name
  repository = var.argocd_chart_repository
  chart      = var.argocd_chart_name
  version    = var.argocd_chart_version

  namespace        = var.argocd_namespace
  create_namespace = false

  values = [
    file("${path.module}/values.yml")
  ]

  wait              = true
  timeout           = 600
  atomic            = true
  cleanup_on_fail   = true
  dependency_update = true
}