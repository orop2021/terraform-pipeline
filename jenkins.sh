#!/bin/bash

yum -y update
yum -y install git
yum -y install java-1.8*
yum -y install wget
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum -y install jenkins
service jenkins start
chkconfig jenkins on
cd /opt
wget http://mirrors.estointernet.in/apache/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.tar.gz
tar -xf apache-maven-3.8.5-bin.tar.gz
rm -rf apache-maven-3.8.5-bin.tar.gz
mv apache-maven-3.8.5/maven
yum install docker -y
systemctl start docker
systemctl enable docker
usermod -aG docker jenkins
service jenkins restart
cd ~
echo "JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.312.b07-1.amzn2.0.2.x86_64" >> ~/.bash_profile

echo " M2_HOME=/opt/maven" >> ~/.bash_profile
echo " M2=M2_HOME/bin" >> ~/.bash_profile
echo " PATH=PATH:HOME/bin:JAVA_HOME:M2_HOME:M2" >> ~/.bash_profile

source .bash_profile
