#install_ansible.sh

sudo apt update -y
sudo apt upgrade -y
sudo apt install python-setuptools -y
sudo apt install python3-pip -y	
sudo pip3 install ansible
echo \n 
ansible --version
sudo apt install docker docker.io -y
docker version


sudo pip3 install docker-compose
docker-compose version

sudo usermod -aG docker $USER

sudo apt install git vim pwgen -y

sudo git clone https://github.com/ansible/awx.git 

cd awx/installer

pwgen -N 1 -s 30
sudo vi inventory
sudo docker ps

ansible-playbook -i inventory updatesecurity.yml
