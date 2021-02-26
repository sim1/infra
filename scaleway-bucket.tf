resource "scaleway_object_bucket" "sim" {
  name = var.scaleway_bucket_name
  acl  = "private"
  versioning {
    enabled = false
  }
}
