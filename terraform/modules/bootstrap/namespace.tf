resource "kubernetes_namespace" "argocd" {
  metadata {
    name   = var.argocd_namespace
    labels = var.namespace_labels
  }
}