output "public_ip" {
  value = "${digitalocean_droplet.node1.ipv4_address}"
}

output "name" {
  value = "${digitalocean_droplet.node1.name}"
}
