resource "scaleway_k8s_cluster" "sim" {
  name             = "sim"
  description      = "my awesome cluster"
  version          = var.kubernetes_version
  cni              = "calico"
  enable_dashboard = false

  # this was in the example
  tags = ["i'm an awsome tag", "yay"]
  # and i like it

  autoscaler_config {
    disable_scale_down               = false
    scale_down_delay_after_add       = "10m"
    estimator                        = "binpacking"
    expander                         = "random"
    ignore_daemonsets_utilization    = true
    balance_similar_node_groups      = true
    expendable_pods_priority_cutoff  = -5
    scale_down_utilization_threshold = 0.8
    max_graceful_termination_sec     = 60
  }
  auto_upgrade {
    enable                        = true
    maintenance_window_start_hour = 5
    maintenance_window_day        = "any"
  }
  feature_gates = [
  ]
}

resource "scaleway_k8s_pool" "sim" {
  cluster_id  = scaleway_k8s_cluster.sim.id
  name        = "sim"
  zone        = "${var.scaleway_region}-1"
  autoscaling = true
  autohealing = true

  container_runtime = "containerd"

  node_type = var.scaleway_kubernetes_cluster_node_type
  size      = var.scaleway_kubernetes_cluster_size
  min_size  = var.scaleway_kubernetes_cluster_min_size
  max_size  = var.scaleway_kubernetes_cluster_max_size
}
