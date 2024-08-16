output "ping_results_path" {
  value = "${path.cwd}/aggregated_ping_results.txt"
}

output "admin_passwords" {
  value = {
    for i, instance in google_compute_instance.default : 
    instance.name => random_password.password[i].result
  }
  sensitive = true
}

output "external_ips" {
  value = [for instance in google_compute_instance.default : instance.network_interface.0.access_config.0.nat_ip]
}

output "internal_ips" {
  value = [for instance in google_compute_instance.default : instance.network_interface.0.network_ip]
}

output "hostnames" {
  value = [for instance in google_compute_instance.default : instance.name]
}

output "ansible_inventory" {
  value = join("\n", flatten([
    "[web_servers]",
    [for instance in google_compute_instance.default : instance.network_interface.0.access_config.0.nat_ip],
    "[db_servers]",
    [for instance in google_compute_instance.default : instance.network_interface.0.network_ip],
  ]))
}