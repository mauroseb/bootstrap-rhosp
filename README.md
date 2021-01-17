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
   - Setup vBMC for the VMs
   - Prepare undercloud based on RHOSP version (13 or 16)
   - Create undercloud configuration
   - Install TripleO in the undercloud
   - Create minimal overcloud configuration
   - Set everything ready to deploy overcloud


**NOTE:** There are nowadays more mature and also complex ways to achieve similar results like Infrared project or TripleO quickstart. However this code tries to keep the steps as simple as possible and should be easy to troubleshoot.

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

        $ git clone https://github.com/mauroseb/bootstrap-rhosp.git
        
 2. Edit variables to match environment

        $ cd bootstrap-rhosp
        $ vi group_vars/all

 3. Run prerequisites

        $ ansible-playbook site.yml --tags prereqs

 4. Reboot the node
 
 5. Create the rest
 
        $ ansible-playbook site.yml --skip-tags prereqs
