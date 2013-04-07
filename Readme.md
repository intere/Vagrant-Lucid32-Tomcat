# Lucid32 Tomcat Server

## Setup
Ensure you have the following tools installed:
* virtualbox - https://www.virtualbox.org/
* vagrant - http://www.vagrantup.com/
* librarian-puppet - https://github.com/rodjek/librarian-puppet

## Vagrant Setup
Do the following:
* $ vagrant box add lucid32 http://files.vagrantup.com/lucid32.box
	* This will pull the VM for you
* git clone https://github.com/intere/Vagrant-Lucid32-Tomcat.git
	* clone this repoistory (it's your working vagrant location)
* $ cd Vagrant-Lucid32-Tomcat/manifests
* $ librarian-puppet install
	* grabs the puppet modules for you
* $ cd ..
* $ vagrant up
	* brings up the VM.

## Deployment Details
* Vagrant is setup to map port 8080 of the VM to port 4568 on your machine
	*  http://localhost:4568/
