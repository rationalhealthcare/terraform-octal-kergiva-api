locals {

  instance_name = "${var.name}-${var.environment}"

  automated_self_heal = true
  automated_prune     = true
  service_name        = "kergiva-api"
  service_port        = 5000
  service_protocol    = "TCP"
  service_scheme      = "http"
  labels = merge(var.labels, {
    "app.kubernetes.io/tier" = "api"
  })
}