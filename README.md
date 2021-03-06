Cloud Computing Project 
======

Repository of the Cloud Computing course of the Master in Informatics Engineering of the University of Granada -> [Web Site](https://akourts.github.io/Project_CC/) 

## Description of the problem

Knowing at least one foreign language is a must-have. However, many people have problems learning a new language or they are really shy and they are afraid to speak.

## Solution

A simple and fun application will help people around the world learn the basics of a new language by providing information like simple everyday phrases, a dictionary etc.

## Architecture

- The solution will be based in microservices architecture.
- A NoSql DB will be used for this purpose.
- Python will be the main programming language.
- Flask is the selected framework.
- A public REST-API will be created.

## Plan

* [Provisioning of VM with Ansible.](https://github.com/AKourts/Project_CC/tree/master/provision/ansible) 

There are many tools which can help with the provisioning of VMs: Chef, Ansible, Puppet, Salt. In this project Ansible was selected as a "smoother" introduction to the "world" of provisioning as it seemed an easier and simpler choice comparing to the documentation of the rest. For instance, the only prerequisite is to have installed python which is omnipresent in Linux distributions. Moreover, Ansible relies on YAML which is more friendly than for example JSON that Chef uses.

* [Automation of VM creation.](https://github.com/AKourts/Project_CC/tree/master/automation/README.md) 

Via the new CLI of Azure a new VM was created automatically. This selection was based on learning more things about azure tecnologies and functionalities. Ubuntu 16.04 was selected as an image for the VM as it is an arguably better choice for beginners to work with.

Despliegue:40.68.116.145

* [Orchestration of VM.](https://github.com/AKourts/Project_CC/tree/master/orquestacion/README.md)

Vagrant is the selected software for the orchestration of more than one virtual machines. It is used to set up one or more virtual machines by:

  - Importing pre-made images (called "boxes")
  - Setting VM-specific settings (IP address, hostnames, port forwarding, memory, etc.)
  - Running provisioning software like Puppet or Chef

One of the positive aspects of Vagrant is that provides a single config file to set multiple virtual machines up, enabling to launch all of them with one command. Also, there's a large number of boxes available at sites such as http://vagrantbox.es which is really helpful because anyone can try various OSes or distributions, applying the same provisioning to set up similar environments.

Despliegue Vagrant:13.95.106.124

* [Use of containers.](https://github.com/AKourts/Project_CC/tree/master/contenedores/README.md)

Docker will be used as a container because it’s easier to test applications against different versions of operating systems, databases, and scripting languages. Alpine makes a great docker container, because it is so small and optimized to be run in RAM. It might also might make a good controller for several docker containers with enough RAM. Also, Alpine image is much lighter than an ubuntu image and can be executed up to 3 times faster than the ubuntu one. Commands can be run through a configuration file called a "Dockerfile". 

Contenedor:https://appservicesandra.azurewebsites.net

Dockerhub:https://hub.docker.com/r/akourts/project_cc

* Combination of the virtual infrastucture to deploy a concrete application.

Using the flask framework, a service in python was created which enables adding and displaying new words. The application is addressed to spanish people, allowing to store a spanish word and its translation in english. So, basically it serves like a personnal dictionary where the user can store the new words that learns every day.

The combination of all the infrastucture was acomplished with Docker Compose. Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration. Here, it is used to create two containers, one for the database and one for the api.

Hito6:http://akourtsdns.eastus.cloudapp.azure.com/
