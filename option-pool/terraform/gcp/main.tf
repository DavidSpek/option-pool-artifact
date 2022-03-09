resource "kubernetes_namespace" "option-pool" {
  metadata {
    name = var.namespace
    labels = {
      "app.kubernetes.io/managed-by" = "plural"
      "app.plural.sh/name" = "option-pool"

      "platform.plural.sh/sync-target" = "pg"

    }
  }
}

