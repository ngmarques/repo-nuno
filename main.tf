resource "google_storage_bucket" "teste" {
  project = var.project_id
  name          = "testebucketnuno"
  location      = "EU"

  uniform_bucket_level_access = true
}