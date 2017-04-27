
cd /


sudo DEBIAN_FRONTEND=noninteractive apt-get -y update


sudo apt-get -y install nodejs
sudo apt-get -y install npm
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo npm install pm2 -g
sudo git clone -b clusterqs https://github.com/mahedley/ToDo_MEAN.git
sudo chmod -R 644 /ToDo_Mean
cd /ToDo_Mean
sudo npm install
sudo pm2 start npm -- start
env PATH=$PATH:/usr/local/bin pm2 startup -u root
