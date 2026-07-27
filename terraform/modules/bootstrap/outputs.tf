output "argocd_namespace" {
  description = "Argo-cd Namespace"
  value       = kubernetes_namespace.argocd.metadata[0].name
}