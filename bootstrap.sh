sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
sudo yum -y -q -e 0 install git ansible
sudo mkdir --parent /home/vagrant/ansible/roles
sudo chown -R vagrant:vagrant /home/vagrant/ansible
