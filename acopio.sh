#!/bin/bash

# create resource group depending on our location, in our case westeurope
az group create -l westeurope -n CCGroupEU

# create VM and obtain public IP adress
publicIP=$(az vm create -g CCGroupEU -n UbuntuCLI --image UbuntuLTS --generate-ssh-keys | jq -r '.publicIpAddress')

echo -VM name : UbuntuCLI
echo -public IP adress : $publicIP

# provision with ansible
echo Provision with Ansible:

ansible-playbook -i "$publicIP," provision.yml -u sandra
