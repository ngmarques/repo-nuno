resource "google_storage_bucket" "bucketnuno" {
  project = var.project_id
  name          = "testebucketnuno"
  location      = "EU"

  uniform_bucket_level_access = true
}

data "google_service_account" "service_account" {
  account_id = var.account_id 
}

resource "google_storage_bucket_iam_binding" "binding" {
    
    bucket = google_storage_bucket.bucketnuno.name
    role = "roles/owner"
    members = "serviceAccount:${data.google_service_account.service_account.email}"
}