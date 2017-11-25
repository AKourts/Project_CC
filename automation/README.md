## Hito 3: Automation of VM creation

An Ubuntu 16.04 VM was created automatically through Azure CLI.

First, CLI 2.0 and jq were installed on the control machine from which we will be running commands. For the processing of JSON data, jq installation is necessary.

```

sudo apt-get install azure-cli
sudo apt-get install jq

```

Afterwards, it's time to connect in our account in azure withthe following command:

```

az login

```

An identification is requested from the platform through a link and an one time code.

Right after comes the execution of the script named [acopio.sh](https://github.com/AKourts/Project_CC/blob/master/acopio.sh) which uses a resource group named CCGroupEU and created in westeurope because regarding our location is what suits best.

Moreover, a [playbook](https://github.com/AKourts/Project_CC/tree/master/automation/provision.yml) is needed in order to accomplish the provisioning with ansible. The parameter "hosts" is assigned the value "all" in order to be executed the new VM which does not belong in a specific group. 

The last command to be executed is 

```
sh acopio.sh

```

and below can be seen the successfull result:

![ansibleCLI](https://github.com/AKourts/Project_CC/blob/master/automation/ansibleCLI.png)
