#!/bin/bash


action=$1
version=$2

#Installing necessary tools and dependencies for installing ansible
installtools () {
    sudo apt-get install curl -y
    sudo apt-get install python -y
    sudo apt install python3-pip -y
    curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
    python get-pip.py
}

ansibleInstall () {
    version=$1
    installtools ()
    
    if [ -z $version ]
    then
    sudo pip3 install 'ansible==$version'
    else 
    sudo pip3 install 'ansible'
    fi
    
}

case $action in

  install)
    ansibleInstall $version 
    ;;

  *)
    echo "Kindly write install and then version name"
    ;;
esac



