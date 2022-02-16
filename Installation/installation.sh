#!/bin/bash

action=$1
version=$2

installAnsible {

    version=$1

    sudo apt-get update -y
    sudo apt install software-properties-common
    if [ -z "$version" ] 
    then
        sudo add-apt-repository --update ppa:ansible/ansible-$version
    else
        sudo add-apt-repository --update ppa:ansible/ansible
    fi
    sudo apt-get install ansible -y
}

case $action in

  install)
    installAnsible $version 
    ;;

  *)
    echo "Kindly write install and then version name"
    ;;
esac



You9:44 PM
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
   14  ls
   15  python get-pip.py
   16  sudo pip3 install 'ansible==2.5.1'
   17  ansible --version
   18  sudo pip3 install 'ansible==2.6.1'
https://medium.com/clarusway/installing-and-upgrading-ansible-with-pip-91219dcbf4c3


