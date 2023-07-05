resource "google_storage_bucket" "teste" {
  project = var.project_id
  name          = "testebucket1"
  location      = var.region
}