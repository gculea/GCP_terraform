
variable "number_of_vms" {
  description = "Number of VMs to create."
  default     = 2
}

variable "vm_flavor" {
  description = "Flavor of the VM."
  default     = "n1-standard-1" # Change to your desired VM type
}

variable "vm_image" {
  description = "Image for the VM."
  default     = "ubuntu-2004-lts" # Change to your desired VM image
}

