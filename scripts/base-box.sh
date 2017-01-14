#!/usr/bin/env bash
setup_vboxGuestAddition () {
    wget http://download.virtualbox.org/virtualbox/5.1.12/VBoxGuestAdditions_5.1.12.iso
    sudo mkdir /media/VBoxGuestAdditions
    sudo mount -o loop,ro VBoxGuestAdditions_5.1.12.iso /media/VBoxGuestAdditions
    sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
    rm VBoxGuestAdditions_5.1.12.iso
    sudo umount /media/VBoxGuestAdditions
    sudo rmdir /media/VBoxGuestAdditions
}

add_user_in_sudoer () {
    echo "osl        ALL=(ALL)      NOPASSWD: ALL" >> /etc/sudoers
}

setup_vboxGuestAddition
