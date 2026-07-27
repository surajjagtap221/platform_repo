variable "argocd_namespace" {
  description = "Namespace where Argo CD will be installed."
  type        = string
}
variable "namespace_labels" {
  description = "Labels applied to the Argo CD namespace."

  type = map(string)

  default = {
    managed-by = "terraform"
    app        = "argocd"
  }
}