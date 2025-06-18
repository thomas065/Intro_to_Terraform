terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.39.0"
    }
  }
}

provider "google" {
  project = "true-artwork-456400-g8"
  region  = "us-central1"
  zone = "us-central1-a"
  credentials = "udemy.json"
}

# Demonstrating how to create a bucket on the fly
resource google_storage_bucket "GCS1" {
  name = "bucket-gcs_tb065_sa"
  location = "us-central1"
}