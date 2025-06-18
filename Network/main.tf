resource google_compute_network "auto-vpc-tf" {
  name = "auto-vpc-tf"
  auto_create_subnetworks = true
}

resource google_compute_network "custom-vpc-tf" {
  name = "custom-vpc-tf"
  auto_create_subnetworks = false
}

resource google_compute_subnetwork "sub-sg"{
  name = "sub-sg"
  network = google_compute_network.custom-vpc-tf.id
  ip_cidr_range = "10.1.0.0/24"
  region = "us-central1"
  private_ip_google_access = true
}

resource google_compute_firewall "allow-icmp" {
  name = "allow-icmp"
  network = google_compute_network.custom-vpc-tf.id
  
  allow {
    protocol = "icmp"
  }
  source_ranges = ["0.0.0.0/16"]
}

# resource "google_cloudfunctions_function" "my-first-function" {
#   name = "my-first-function"
#   runtime = "nodejs14"
#   description = "This is my very first function from teraform"

#   available_memory_mb = 128
#   source_archive_bucket = google_storage_bucket
# }



##################################################
output "auto"{
  value = google_compute_network.auto-vpc-tf.name
}

output "custom"{
  value = google_compute_network.custom-vpc-tf.name
}