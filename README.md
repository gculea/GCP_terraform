# gcp_instance_terraform

Terraform Google Compute Instance Management
Description
This Terraform script creates a specified number of Google Compute Engine instances, sets up a specified SSH key for access, and tests the network connectivity between the VMs.

Prerequisites
Google Cloud SDK: Ensure that you have the Google Cloud SDK installed and initialized. You can find instructions on how to do this [[here](https://cloud.google.com/sdk/docs/install-sdk)].

Terraform: Ensure that you have Terraform installed. You can find installation instructions [[here](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)].

Service Account Key: The xxxxx.json file contains the credentials of the service account used to deploy the resources. Ensure you have the correct permissions set for this service account. Add your into a local file your Compute Engine service account Key json file.



Usage

1. Clone the Repository
   ```
   git clone https://github.com/gculea/gcp_instance_terraform.git
   ```
2. Navigate to the Repository
   ```
   cd path/to/terraform-folder
   ```
3. Initialize Terraform
   ```
   terraform init
   ```   
4. Plan Infrastructure
   ```
   terraform plan
   ```
5. Apply Infrastructure
   ```
   terraform apply
   ```
6. Aggregate Results
   This code includes a null_resource to download the ping results from each instance and aggregates them into a file called aggregated_ping_results.txt.

7. Destroy Infrastructure
   ```
   terraform destroy
   ```
Variables
 * number_of_vms: The number of VMs to create (Default is set in variables.tf)
 * vm_flavor: The machine type for the VMs (Default is set in variables.tf)
 * vm_image: The OS image for the VMs (Default is set in variables.tf)

Output 
admin_passwords: Sensitive data, holds the passwords for each VM. Use 'terraform output admin_passwords' to access the passwords after setting it as sensitive.

Notes
The script sets up a test to check network connectivity between the VMs and logs the results in the VMs' /tmp/ directory. After all VMs are up, it aggregates the ping test results into a local file named aggregated_ping_results.txt.
