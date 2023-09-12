# bin
apt-get -y install jq
apt-get -y install mc
apt-get -y install git
apt-get -y install vim
apt-get -y install curl
apt-get -y install tmux
apt-get -y install wget
apt-get -y install unzip
apt-get -y install docker
apt-get -y install httpie
apt-get -y install icdiff
apt-get -y install openvpn
apt-get -y install ripgrep
apt-get -y install vagrant
apt-get -y install fd-find

# packages
tar -xvf meld-3.22.0.tar.xz
tar -jxvf sublime_merge_build_2091_x64.tar.xz
tar -jxvf sublime_text_3_build_3211_x64.tar.bz2
sudo dpkg -i watchexec-1.20.5-x86_64.deb
sudo dpkg -i virtualbox-7.0.10_amd64.deb
sudo dpkg -i dropbox_2022.12.05_amd64.deb
sudo dpkg -i google-chrome-stable-116.0_amd64.deb
sudo dpkg -i mysql-workbench-community_8.0.34_amd64.deb

# gnome-classic
apt-get install gnome-shell or gnome-session-fallback
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
