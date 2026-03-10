
kubeconfig_path = "~/.kube/config"
kube_context    = "minikube"   # or "docker-desktop", "kind-kind", etc.

namespace    = "my-app"
app_name     = "demo-app"
app_image    = "nginx:1.25-alpine"
app_replicas = 2
app_port     = 80
service_type = "ClusterIP"   # use "NodePort" for local clusters

resource_limits = {
  cpu    = "250m"
  memory = "128Mi"
}

resource_requests = {
  cpu    = "100m"
  memory = "64Mi"
}
