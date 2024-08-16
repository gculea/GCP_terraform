provider "google" {
  credentials = file("c3b18a7dd9ab.json") # Change with your gcp Service Account Key
  project     = "cloud" # Change to your gcp project
  region      = "europe-west1"  # Change to your desired region
}