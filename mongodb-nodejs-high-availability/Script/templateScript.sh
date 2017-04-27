
cd /


sudo DEBIAN_FRONTEND=noninteractive apt-get -y update


sudo apt-get -y install nodejs
sudo apt-get -y install npm
sudo apt-get -y install git
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo npm install pm2 -g
sudo git clone -b clusterqs https://github.com/mahedley/ToDo_MEAN.git
sudo chmod -R 655 /ToDo_MEAN
cd /ToDo_MEAN
sudo npm install
sudo pm2 start npm -- start
sudo env PATH=$PATH:/usr/local/bin pm2 startup -u root
