#!/usr/bin/env bash

sh /vagrant/scripts/cleaner.sh
sh /vagrant/scripts/welcome-message.sh
sh /vagrant/scripts/base-box.sh
sh /vagrant/scripts/base-installer.sh
sh /vagrant/scripts/dev-tool.sh