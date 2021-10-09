#  debian_11_vanuw
Creates a debian bullseye + nginx + uwsgi + web2py
Requires:
 virtualbox
 vagrant
 ansible

This package contains the configuration files to do:
 -- Vagrant
      Create a debian bullseye virtual machine
      Create a self-signed certificate
 -- Ansible
      Install nginx + uwsgi + web2py and required python packages
      Copy example configuration files for the web server
 -- Vagrant
      Create a self-signed certificate   
      Reload daemons and start the web server

Usage:
  Clone this repo, cd in the folder and run:
    vagrant up
