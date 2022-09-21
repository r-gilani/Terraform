resource "kubernetes_service" "nginx" {
  metadata {
    name      = var.service_name
    namespace = "default"
    labels = {
      "app.kubernetes.io/name" = "nginx"
    }
  }
  spec {
    type = "NodePort"
    selector = {
      "app.kubernetes.io/name" = "nginx"
    }
    port {
      port = 80
    }
  }
}


resource "kubernetes_deployment" "nginx" {
  metadata {
    name      = var.deployment_name
    namespace = "default"
    labels = {
      "app.kubernetes.io/name" = "nginx"
    }
  }

  spec {
    replicas = var.deployment_replicas

    selector {
      match_labels = {
        "app.kubernetes.io/name" = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          "app.kubernetes.io/name" = "nginx"
        }
      }

      spec {
        container {
          image = var.deployment_image
          name  = "nginx"
        }
      }
    }
  }
}







