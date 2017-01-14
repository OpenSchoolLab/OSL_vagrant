#!/bin/bash

install_wget(){
	yum -y install wget
}

install_curl () {
    yum -y install curl
}

#setup_epel(){
#    wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
#    rpm -Uvh epel-release-latest-6.noarch.rpm
#}

#install_ansible () {
#    yum -y install ansible
#}

install_curl
install_wget