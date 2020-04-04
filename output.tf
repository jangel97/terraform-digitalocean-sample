output "public_ip" {
  value = "${digitalocean_droplet.node1.ipv4_address}"
}

output "name" {
  value = "${digitalocean_droplet.node1.name}"
}
output "public_ip2" {
  value = "${digitalocean_droplet.node2.ipv4_address}"
}

output "name2" {
  value = "${digitalocean_droplet.node2.name}"
}
