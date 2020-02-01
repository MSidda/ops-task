#! /bin/bash

sudo apt-get install virtualbox -y
sudo apt-get install vagrant -y
vagrant init hashicorp/bionic64 
vagrant up
vagrant provision
vagrant ssh