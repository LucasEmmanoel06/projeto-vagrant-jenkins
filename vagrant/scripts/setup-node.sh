apt-get update -y
apt-get install -y openssh-server

systemctl enable ssh
systemctl start ssh

mkdir -p /home/vagrant/.ssh

chmod 700 /home/vagrant/.ssh
chmod -R vagrant:vagrant /home/vagrant/.ssh
