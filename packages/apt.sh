# bin
apt-get -y install mc
apt-get -y install git
apt-get -y install vim
apt-get -y install curl
apt-get -y install htop
apt-get -y install tmux
apt-get -y install wget
apt-get -y install unzip
apt-get -y install docker
apt-get -y install httpie
apt-get -y install openvpn
apt-get -y install vagrant

# storage
apt-get -y install memcached
apt-get -y install mysql-server
apt-get -y install redis-server

# packages
tar -zxvf meld-3.20.0.tar.xz
tar -zxvf sublime-text-3_1_1.tar.gz
tar -zxvf smartgit-linux-18_2_5.tar.gz
sudo dpkg -i skype-linux-64.deb
sudo dpkg -i virtualbox-5.2.18_amd64.deb
sudo dpkg -i dropbox-2015.10.28_amd64.deb
sudo dpkg -i google-chrome-stable-70.0_amd64.deb
sudo dpkg -i mysql-workbench-community-8.0.12_amd64.deb

# gnome-classic
apt-get install gnome-shell or gnome-session-fallback
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
