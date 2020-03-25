# main.tf
#https://codereviewvideos.com/course/installing-kubernetes-rancher-2-terraform/video/provision-digital-ocean-droplet-terraform
#variable "digitalocean_token" {}

# Configure the Digital Ocean Provider
provider "digitalocean" {
  #token = "${var.digitalocean_token}"
}

#  Resources
## Create a new ssh key
resource "digitalocean_ssh_key" "default" {
  name       = "my ssh key"
  public_key = "${file("./id_rsa.pub")}"
}

## Create a new Digital Ocean Droplet using the SSH key
resource "digitalocean_droplet" "node1" {
  name     = "node1"
  image    = "ubuntu-16-04-x64"
  size     = "s-1vcpu-1gb"
  region   = "lon1"
  ssh_keys = ["${digitalocean_ssh_key.default.fingerprint}"]
}
