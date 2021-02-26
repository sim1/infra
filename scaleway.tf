provider "scaleway" {
  access_key = var.secret_scaleway_access_key
  secret_key = var.secret_scaleway_secret_key
  region     = var.scaleway_region
  project_id = var.scaleway_project_id
}
