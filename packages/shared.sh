# jvm
# jenv install java 1.6.0_45
# jenv install java 1.7.0_75
# jenv install java 1.8.0_77
curl -L -s get.jenv.mvnsearch.org | bash

# pvm
cd /tmp/
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py && rm /tmp/get-pip.py

# gvm
cd /tmp/
wget https://dl.google.com/go/go1.11.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf /tmp/go1.11.5.linux-amd64.tar.gz
echo 'export PATH="$PATH:/usr/local/go/bin"' >> $HOME/.profile

# php
apt-get install php5
apt-get install apache2
apt-get install php5-mysql
apt-get install phpmyadmin
cd /tmp/
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# nvm
# nvm install 8.15.0
# nvm alias default 8.15.0
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# rvm
# rvm install ruby-2.6.3
# rvm install jruby-9.2.7.0
url="hkp://keys.gnupg.net"
key="409B6B1796C275462A1703113804BB82D39DC0E3"
gpg --keyserver $url --recv-keys $key && curl -sSL https://get.rvm.io | bash -s stable
