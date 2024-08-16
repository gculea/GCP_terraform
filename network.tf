resource "google_compute_network" "default" {
  name                    = "vpc-network"
  auto_create_subnetworks = true
}

resource "google_compute_firewall" "allow_icmp" {
  name    = "allow-icmp"
  network = google_compute_network.default.name

  allow {
    protocol = "icmp"
  }
  
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_address" "static" {
  count = var.number_of_vms
  name  = "static-ip-${count.index}"
  region = "us-central1"
}
