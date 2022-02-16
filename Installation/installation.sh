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



