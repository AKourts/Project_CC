## Hito 4: Orchestration

Two virtual machines are going to be created. The first one named "vagrVM" will be used for the rest servers and the second one named "vagrVMDB" will be used for the database. The select operating system for both of them is the latest versionof Ubuntu.

From this [link](https://www.vagrantup.com/downloads.html) we can download the corresponding version of Vagrant, according our operation system. If we use an Ubuntu machine, we have to execute the following command in order to install vagrant, which will install the version 2.0.1.

```
dpkg -i vagrant_2.0.1_x86_64.deb

```

Before we step into the orchestration with Vagrant, we have to make sure we have installed Azure CLI. [Here](https://github.com/AKourts/Project_CC/tree/master/automation) are available the instructions of how to achieve that. 

After installing Azure CLI, we have to execute the following commands:
 
```
  az login

  az ad sp create-for-rbac

  az account list --query "[?isDefault].id" -o tsv

```

The first command is necessary to start a session in azure. 

The second one is used to obtain the following variables: 

 - azure.tenant_id = ENV['AZURE_TENANT_ID']

 - azure.client_id = ENV['AZURE_CLIENT_ID']

 - azure.client_secret = ENV['AZURE_CLIENT_SECRET']

The third one is used to obtain the subscription id of azure.

 - azure.subscription_id = ENV['AZURE_SUBSCRIPTION_ID']

Next, it's time to create the [Vagrantfile](https://github.com/AKourts/Project_CC/tree/master/orchestration/Vagrantfile). In this file there is the code which generates the different virtual machines.

Finally, before final run we have to add azure box and install azure-vagrant plugin.

```
  vagrant box add azure https://github.com/azure/vagrant-azure/raw/v2.0/dummy.box --provider azure
  vagrant plugin install vagrant-azure —plugin-version '2.0.0.pre6'
  vagrant up --no-parallel

```


