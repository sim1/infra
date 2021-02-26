# required
variable "scaleway_project_id" {
  type = string
}
variable "secret_scaleway_access_key" {
  type = string
}
variable "secret_scaleway_secret_key" {
  type = string
}
variable "scaleway_bucket_name" {
  type    = string
  default = "sim"
}

# less required
variable "scaleway_region" {
  type        = string
  default     = "nl-ams"
  description = "fr-par, nl-ams, pl-waw"
}
variable "kubernetes_version" {
  type    = string
  default = "1.20"
}
variable "scaleway_kubernetes_cluster_node_type" {
  type    = string
  default = "DEV1-M"
}
variable "scaleway_kubernetes_cluster_size" {
  type    = number
  default = 2
}
variable "scaleway_kubernetes_cluster_min_size" {
  type    = number
  default = 2
}
variable "scaleway_kubernetes_cluster_max_size" {
  type    = number
  default = 6
}
