resource "random_password" "password" {
  count   = var.number_of_vms
  length  = 16
  special = true
}