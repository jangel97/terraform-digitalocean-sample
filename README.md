## Usage
Set token `export DIGITALOCEAN_TOKEN=''`, you can get it from https://cloud.digitalocean.com/account/api/tokens

Create ssh key using the following commands:
```
mkdir .ssh
ssh-keygen -t rsa -b 4096 -C "joselito" -f ./ssh/id_rsa
```
Run terraform:
```
terraform init
terraform plan
terraform apply
terraform output
ssh -i .ssh/id_rsa <PUBLIC IP OF DROPPLET>
```

## INFO:

https://www.terraform.io/docs/providers/do/d/sizes.html

https://www.terraform.io/docs/providers/do/d/droplet.html#private_networking

https://www.terraform.io/docs/providers/do/r/volume_attachment.html

https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean

https://github.com/verbnetworks/terraform-digitalocean-droplet

https://www.digitalocean.com/community/questions/can-i-create-a-droplet-with-no-public-ip

https://www.digitalocean.com/community/tutorials/how-to-isolate-servers-within-a-private-network-using-iptables
