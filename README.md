export DIGITALOCEAN_TOKEN=''
https://cloud.digitalocean.com/account/api/tokens?i=e3001c
mkdir .ssh
ssh-keygen -t rsa -b 4096 -C "joselito" -f ./ssh/id_rsa
terraform init
terraform plan
terraform apply
ssh -i .ssh/id_rsa <PUBLIC IP OF DROPPLET>






INFO:

https://www.terraform.io/docs/providers/do/d/sizes.html
https://www.terraform.io/docs/providers/do/d/droplet.html#private_networking
