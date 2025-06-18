resource "google_storage_bucket" "thomas_gcsbucket_065" {
  name          = "thomas_gcsbucket_065"
  storage_class = "NEARLINE"
  location      = "US-CENTRAL1"
  force_destroy = true

  labels = {
    "env" = "tf_env"
    "dep" = "sales"
  }

  uniform_bucket_level_access = true
}

# resource "google_storage_bucket_object" "picture" {
#   name   = "Digital_Lion"
#   bucket = google_storage_bucket.thomas_gcsbucket_065.name
#   source = "DigitalLion.png"
# }