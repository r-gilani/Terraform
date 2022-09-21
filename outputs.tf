output "nginx_http_address" {
  value = "http://192.168.1.181:${kubernetes_service.nginx.spec.0.port.0.node_port}"
}
