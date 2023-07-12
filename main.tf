# locals {
#   files = {
#     for files in fileset(path.module, "/files_to_bucket/*"):
#   }
# }

data "google_storage_bucket" "bucket" {
  name = "testebucketnuno"
}

resource "google_storage_bucket_object" "files_to_bucket" {

    for_each = fileset(path.module, "/files_to_bucket/*")
  
  name   = each.value
  source = each.value
  bucket = data.google_storage_bucket.bucket.name
}