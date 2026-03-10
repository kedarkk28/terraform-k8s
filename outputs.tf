output "namespace" {
  description = "Kubernetes namespace where resources are deployed"
  value       = kubernetes_namespace.app.metadata[0].name
}

output "deployment_name" {
  description = "Name of the Kubernetes Deployment"
  value       = kubernetes_deployment.app.metadata[0].name
}

output "service_name" {
  description = "Name of the Kubernetes Service"
  value       = kubernetes_service.app.metadata[0].name
}

output "service_cluster_ip" {
  description = "ClusterIP of the Service (internal access)"
  value       = kubernetes_service.app.spec[0].cluster_ip
}

output "configmap_name" {
  description = "Name of the ConfigMap"
  value       = kubernetes_config_map.app_config.metadata[0].name
}

output "hpa_name" {
  description = "Name of the HorizontalPodAutoscaler"
  value       = kubernetes_horizontal_pod_autoscaler_v2.app.metadata[0].name
}

output "replicas" {
  description = "Desired number of pod replicas"
  value       = var.app_replicas
}
