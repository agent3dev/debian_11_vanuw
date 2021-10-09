Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  config.vm.network "forwarded_port", guest: 80, host: 1080
  config.vm.network "forwarded_port", guest: 443, host: 1443
  config.vm.provision :ansible do |ansible|
   ansible.playbook = "install_packages.yml"
  end
  config.vm.provision :ansible do |ansible|
   ansible.playbook = "configuration.yml"
  end
  config.vm.provision "shell", inline: <<-SHELL
    neofetch
    bash /srv/ssl/self_sign.sh '/srv/ssl/'
    chown -R www-data:www-data /srv/
    systemctl daemon-reload
    systemctl restart emperor.uwsgi.service
    systemctl restart nginx
  SHELL
end
