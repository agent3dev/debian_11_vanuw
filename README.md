#  Debian bullseye VANUW
Vagrant + Ansible + Nginx + Uwsgi + Web2py

Creates a debian bullseye virtual web server

Requires:
 
	virtualbox
 	vagrant
 	ansible
 
This package contains the configuration files to install a virtual server: 

	1 - Vagrant creates a debian bullseye virtual machine
 	2 - Ansible installs nginx + uwsgi + web2py and the required python packages
	3 - Ansible copies configuration files for a basic web server
 	4 - Finally Vagrant creates a self-signed certificate, reload daemons and starts the web server

Usage:
  Clone this repo, cd in the folder and run:
    
	vagrant up --provider virtualbox
 	vagrant provision
 
 You can access the webserver in the folowing URL:
 
 	https://localhost:1443
 
 TODO:
 	Integrate certbot when a domain is provided
