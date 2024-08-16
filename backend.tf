terraform {
 backend "gcs" {
   bucket  = "terraform-dev"
   prefix  = "terraform/state"
 }
}