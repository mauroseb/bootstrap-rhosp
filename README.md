# Bootstrap RHOSP


## Description

 - The set of roles will prepare the environment to deploy Red Hat Openstack Platform
 - The roles cover the following tasks:
   - Install required software
   - Setup stack user
   - Sysctl configuration
   - Kernel modules


### Prerequisits

 - Have a fresh fedora build
 - Internet connection
 - Following software installed:
   - git
   - ansible
 - The external connection NIC plug to bridge ```br0``` (or edit corresponding variables)


## Usage

 1. Clone repo

        $ git clone https://gitlab.cee.redhat.com/moddi/bootstrap-rhosp
 2. Edit variables of each role to match environment

        $ cd bootstrap-rhosp

 3. Run playbook

        $ ansible-playbook site.yml

 4. Reboot the node
