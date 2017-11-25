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

The new CLI of Azure was used to create automatically a new VM. This selection was based on learning more things about azure tecnologies and functionalities. Ubuntu 16.04 was selected as an image for the VM as it is an arguably better choice for beginners to work with.

Despliegue:40.68.116.145

* Orchestration of VM.
* Use of containers.
* Combination of the virtual infrastucture to deploy a concrete application.
