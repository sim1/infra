provider "kustomization" {
  kubeconfig_raw = scaleway_k8s_cluster.sim.kubeconfig.0.config_file
}

data "kustomization" "overlay" {
  path = "manifests/overlays/apps"
}

resource "kustomization_resource" "overlay" {
  depends_on = [
    scaleway_k8s_cluster.sim,
    scaleway_k8s_pool.sim,
  ]
  for_each = data.kustomization.overlay.ids
  manifest = data.kustomization.overlay.manifests[each.value]
}
