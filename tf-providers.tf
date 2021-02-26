terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "2.0.0-rc.2"
    }
    kustomization = {
      source  = "kbst/kustomization"
      version = "0.4.1"
    }
  }
}
