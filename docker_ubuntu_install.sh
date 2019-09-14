sudo apt-get install apt-transport-https software-properties-common ca-certificates -y
wget https://download.docker.com/linux/ubuntu/gpg && sudo apt-key add gpg
sudo echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -c -s) stable" >> /etc/apt/sources.list
sudo apt-get update -y
sudo apt-get install docker-ce -y

