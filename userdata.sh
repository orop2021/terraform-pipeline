#!/bin/bash
 # description = intall ansble bootstrap script


 yum update -y
 yum -y install wget
 amazon-linux-extras install ansible2
 yum install epel-release -y
  yum -y install ansible
 yum -y install ansible python-pip
 pip install boto
  cd /etc/ansible
 echo " host_key_checking = False " ansible.cfg
  sed -i '1s/^/localhost\n/' hosts
  cd ~

