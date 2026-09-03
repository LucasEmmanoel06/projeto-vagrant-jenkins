#!/bin/bash

apt-get update -y

# Java e SSH
apt-get install -y openjdk-17-jdk openssh-server wget gnupg

# Repositório oficial do Jenkins
wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" \
  > /etc/apt/sources.list.d/jenkins.list

# Instala Jenkins
apt-get update -y
apt-get install -y jenkins

# Inicia Jenkins
systemctl enable jenkins
systemctl start jenkins

# Configura SSH
systemctl enable ssh
systemctl start ssh

mkdir -p /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
chown -R vagrant:vagrant /home/vagrant/.ssh