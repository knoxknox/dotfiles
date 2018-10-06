# jvm
# jenv install java 1.6.0_45
# jenv install java 1.7.0_75
# jenv install java 1.8.0_77
curl -L -s get.jenv.mvnsearch.org | bash

# pvm
cd /tmp/
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py && rm /tmp/get-pip.py

# php
apt-get install php5
apt-get install apache2
apt-get install php5-mysql
apt-get install phpmyadmin
cd /tmp/
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# nvm
# nvm install 0.10.31
# nvm alias default 0.10.31
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# rvm
# rvm install ruby-2.4.0
# rvm install jruby-9.2.0.0
url="hkp://keys.gnupg.net"
key="409B6B1796C275462A1703113804BB82D39DC0E3"
gpg --keyserver $url --recv-keys $key && curl -sSL https://get.rvm.io | bash -s stable
