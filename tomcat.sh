#!/bin/bash
yum -y update
yum -y install wget
yum -y install git
yum -y install java-1.8*
cd ~
cd /opt
wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.tar.gz
tar -xf apache-tomcat-8.5.50.tar.gz
mv apache-tomcat-8.5.50.tar.gz tomcat
rm -rf  apache-tomcat-8.5.50.tar.gz
cd ~
echo "JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.312.b07-1.amzn2.0.2.x86_64" >> ~/.bash_profile
echo " PATH=PATH:HOME/bin:JAVA_HOME" >> ~/.bash_profile

source .bash_profile
