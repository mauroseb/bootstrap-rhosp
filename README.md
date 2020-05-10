# Bootstrap RHOSP


## Description

 - The set of roles will prepare the environment to deploy Red Hat Openstack Platform
 - The roles cover the following tasks:
 
   - Install required software
   - Setup stack user
   - Sysctl configuration
   - Kernel modules
   - Create base image to build undercloud and other systems required
   - Create and tune undercloud vm
   - Create overcloud vms


*NOTE: There are nowadays more mature and also complex ways to achieve similar results like Infrared project or TripleO quickstart. However this code is simpler and *

### Prerequisites

 - Have a fresh fedora build
 - At least 96 GB of RAM
 - Internet connection
 - Following software installed:
   - git
   - ansible
 - The external connection NIC plug to bridge ```br0``` (or edit corresponding variables)


## Usage

 1. Clone repo

        $ git clone https://gitlab.cee.redhat.com/moddi/bootstrap-rhosp
 2. Edit variables to match environment

        $ cd bootstrap-rhosp
        $ vi group_vars/all

 3. Run prerequisites

        $ ansible-playbook site.yml --tags prereqs

 4. Reboot the node
 
 5. Create the rest
 
        $ ansible-playbook site.yml --skip-tags prereqs
