#!/usr/bin/env bash

update_yum () {
    yum -y update
}

install_utils(){
	yum -y install git
}

install_devtools () {
    yum -y groupinstall 'Development Tools'
}

install_rvm () {
    sudo gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    \curl -sSL https://get.rvm.io | bash -s stable
    source /etc/profile.d/rvm.sh
}

install_ruby () {
    echo "\n Installing ruby....\n"
    source /etc/profile.d/rvm.sh
    rvm install 2.2
    rvm use 2.2 --default
}

install_rubygem () {
    yum -y install ruby-rdoc ruby-devel
    yum -y install rubygems
}

install_rails () {
    gem install rails
}

install_nodejs () {
    curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
    yum -y install nodejs
}

install_postgres () {
    yum -y update
    yum -y install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-redhat96-9.6-3.noarch.rpm
    yum -y install postgresql96-server postgresql96-devel
    service postgresql-9.6 initdb
    chkconfig postgresql-9.6 on
    service postgresql-9.6 start
    gem install pg -- --with-pg-config=/usr/pgsql-9.6/bin/pg_config
}

install_mysql () {
    yum -y update
    yum -y install mysql-server mysql-devel
    /sbin/chkconfig --levels 235 mysqld on
    service mysqld start
}

install_bundler () {
    gem install bundler
}

update_yum
install_utils
install_devtools
install_rvm
install_ruby
install_rubygem
install_bundler
install_rails
install_nodejs
install_postgres
