#!/bin/bash


# handle file conflict
if [ -f .bashrc ]; then
	mv .bashrc .bashrc.old
fi

if [ -f .bash_aliases ]; then
	mv .bashrc .bashrc.old
fi

if [ -f .vimrc ]; then
	mv .vimrc .vimrc.old
fi


# get files
wget https://raw.githubusercontent.com/ethanhen/ewhLinuxScripts/main/.bashrc
wget https://raw.githubusercontent.com/ethanhen/ewhLinuxScripts/main/.bash_aliases
wget https://raw.githubusercontent.com/ethanhen/ewhLinuxScripts/main/.vimrc

apt-get -y update && apt-get upgrade
apt-get -y vim fastfetch curl git net-tools fail2ban btop zip unzip ncdu

# write ssh key
read -p 'paste ssh public key: '
echo "$REPLY" >> $HOME/.ssh/authorized_keys
echo 'your authorized_keys file:\n '
cat $HOME/.ssh/authorized_keys

# disable password auth
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo echo 'PasswordAuthentication no' > /etc/ssh/sshd_config.d/50-cloud-init.conf

# setup vimplugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
