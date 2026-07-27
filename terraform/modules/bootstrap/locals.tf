locals {
  namespace_lables = {
    "app.kubernetes.io/managed-by" = "terraform"
    "app.kubernetes.io/part-of"    = "argocd"
  }
}