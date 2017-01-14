#!/usr/bin/env bash

clean () {
    yum clean
    cat /dev/null > ~/.bash_history && history -c
}

set_vagrant_date () {
    date > /etc/vagrant_box_build_time
}

setup_authorised_key () {
    mkdir /home/vagrant/.ssh
    chmod 700 /home/vagrant/.ssh
    wget --no-check-certificate 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
    chmod 0600 /home/vagrant/.ssh/authorized_keys
    chown -R vagrant /home/vagrant/.ssh
}

clean
set_vagrant_date
#setup_authorised_key

