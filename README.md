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
#retrieve info about possible droplets
https://www.terraform.io/docs/providers/do/d/droplet.html#private_networking
https://www.terraform.io/docs/providers/do/r/volume_attachment.html
#atachar volumen disco
https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean
#ejemplo remote exec configurando apt

https://registry.terraform.io/modules/verbnetworks/droplet/digitalocean/0.1.3?tab=inputs
#terraform registry, interesting
https://github.com/verbnetworks/terraform-digitalocean-droplet
#good example
https://www.digitalocean.com/community/questions/can-i-create-a-droplet-with-no-public-ip
#todos los nodos arrancan con ip publica, una vez de acabe lo que sea, se borra la interfcie de red

https://www.digitalocean.com/community/tutorials/how-to-isolate-servers-within-a-private-network-using-iptables
#configure networking internal network

Para hacer un despliegue rapidito, (que no deberia ser la forma canonica de desplegar), lo que haria es desplegar todas las maquinas con ip publica (ya que no se puede de otra forma) y con la opcion private_networking, bastion incluido, pues asi estara en la misma VLAN. 
Una vez las maquinas creadas, instala ansible en bastion/loadbalancer y desde alli tira comando adhco que apague la interficie de red con la ip publica. Previamente ssh-copy-id, hacer toda la provision via ansible


TAREAS:
MIRAR DROPPLET CENTOS
ESCALAR ATTRIBUTO size 
