#! /bin/bash
#用於下載mjpg影像串流伺服器，並自動啟動伺服器。（此設定檔適用Raspberry Picam）
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install subversion libjpeg8-dev imagemagick libv4l-dev -y
svn co https://svn.code.sf.net/p/mjpg-streamer/code/
cd /home/pi/code/mjpg-streamer
make
sudo make install
cd ~
wget http://www.linux-projects.org/listing/uv4l_repo/lrkey.asc && sudo apt-key add ./lrkey.asc
sudo chmod 777 /etc/apt/sources.list
echo "deb http://www.linux-projects.org/listing/uv4l_repo/raspbian/ wheezy main" >> /etc/apt/source.list
sudo chmod 644 /etc/apt/sources.list
sudo apt-get update
sudo apt-get install uv4l uv4l-raspicam -y
sudo reboot