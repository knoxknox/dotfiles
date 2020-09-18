# jvm
# jenv install java 1.6.0_45
# jenv install java 1.7.0_75
# jenv install java 1.8.0_77
curl -L -s get.jenv.mvnsearch.org | bash

# pvm
cd /tmp/
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py && rm /tmp/get-pip.py

# gvm
cd /tmp/
wget https://dl.google.com/go/go1.15.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf /tmp/go1.15.2.linux-amd64.tar.gz
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
# nvm install 12.18.4
# nvm alias default 12.18.4
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# rvm
# rvm install ruby-2.7.1
# rvm install jruby-9.2.13.0
name="hkp://pool.sks-keyservers.net"
keys="409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB"
gpg --keyserver $name --recv-keys $keys && curl -sSL https://get.rvm.io | bash -s stable
