variable "kubeconfig_path" {
  description = "Path to the kubeconfig file"
  type        = string
  default     = "~/.kube/config"
}

variable "kube_context" {
  description = "Kubernetes context to use from the kubeconfig"
  type        = string
  default     = "minikube" # change to your context (e.g. docker-desktop, kind-kind)
}

variable "namespace" {
  description = "Kubernetes namespace for all resources"
  type        = string
  default     = "my-app"
}

variable "app_name" {
  description = "Application name used across all resources"
  type        = string
  default     = "demo-app"
}

variable "app_image" {
  description = "Container image to deploy"
  type        = string
  default     = "nginx:1.25-alpine"
}

variable "app_replicas" {
  description = "Number of pod replicas"
  type        = number
  default     = 2
}

variable "app_port" {
  description = "Container port exposed by the app"
  type        = number
  default     = 80
}

variable "service_type" {
  description = "Kubernetes Service type (ClusterIP, NodePort, LoadBalancer)"
  type        = string
  default     = "ClusterIP"
}

variable "resource_limits" {
  description = "CPU and memory limits for the container"
  type = object({
    cpu    = string
    memory = string
  })
  default = {
    cpu    = "250m"
    memory = "128Mi"
  }
}

variable "resource_requests" {
  description = "CPU and memory requests for the container"
  type = object({
    cpu    = string
    memory = string
  })
  default = {
    cpu    = "100m"
    memory = "64Mi"
  }
}
