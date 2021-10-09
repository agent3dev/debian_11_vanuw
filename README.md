#  Debian bullseye VANUW - vagrant + ansible + nginx + uwsgi + web2py

Creates a debian bullseye virtual web server

Requires:
 
				virtualbox
 
				vagrant
 
				ansible
 
This package contains the configuration files to install a virtual server: 

 1 - Vagrant creates a debian bullseye virtual machine
 
 2 - Ansible installs nginx + uwsgi + web2py and the required python packages and copies configuration files for a basic web server
 
 3 - Finally Vagrant creates a self-signed certificate, reload daemons and starts the web server

Usage:
  Clone this repo, cd in the folder and run:
    
    vagrant up
    
    vagrant provision
