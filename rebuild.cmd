vagrant destroy --force
vagrant up
echo Y | cacls .vagrant/machines/default/hyperv/private_key /P richa:F
ssh-add .vagrant/machines/default/hyperv/private_key
