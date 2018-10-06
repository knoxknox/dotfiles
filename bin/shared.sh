# node
install nvm
add nvm.sh to ~/.bashrc
node: nvm install 0.10.31
nvm alias default 0.10.31
gulp: npm install -g gulp
bower: npm install -g bower
grunt: npm install -g grunt-cli
packages: npm install && bower install

# php5
apt-get install php5
apt-get install apache2
apt-get install php5-mysql
apt-get install phpmyadmin
debugger: http://phpdbg.com
php5-composer: https://getcomposer.org

# ruby
apt-get install ruby1.9.3
curl -sSL https://get.rvm.io | bash -s stable
.rvmrc: rvm use 2.0.0@yourgemsetname --create

# packages
(curl -L -s get.jenv.io | bash) && jenv install java 1.8.0_71
wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py
