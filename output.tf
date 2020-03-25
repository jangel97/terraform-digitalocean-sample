output "Public ip" {
  value = "${digitalocean_droplet.node1.ipv4_address}"
}

output "Name" {
  value = "${digitalocean_droplet.node1.name}"
}
