resource "kubernetes_manifest" "root_application" {

  manifest = {

    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"

    metadata = {
      name      = var.gitops_root_application_name
      namespace = var.argocd_namespace

      finalizers = [
        "resources-finalizer.argocd.argoproj.io"
      ]
    }

    spec = {

      project = "default"

      source = {
        repoURL        = var.git_repository_url
        targetRevision = var.git_target_revision
        path           = var.gitops_root_path
      }

      destination = {
        server    = "https://kubernetes.default.svc"
        namespace = var.argocd_namespace
      }

      syncPolicy = {

        automated = {
          prune    = true
          selfHeal = true
        }

        syncOptions = [
          "CreateNamespace=true",
          "ServerSideApply=true"
        ]
      }
    }
  }

  depends_on = [
    helm_release.argocd
  ]
}