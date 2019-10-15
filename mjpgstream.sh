#! /bin/bash
#用於下載mjpg影像串流伺服器，並自動啟動伺服器。（此設定檔適用usb camera）
sudo apt-get update
sudo apt-get install subversion libjpeg8-dev imagemagick libv4l-dev -y
svn co https://svn.code.sf.net/p/mjpg-streamer/code/
cp -rf code/ ../
cd ~/code/mjpg-streamer
make
sudo make install
./mjpg_streamer -i "./input_uvc.so -y -n" -o "./output_http.so -w ./www" &
hostname="$(hostname -I)"
echo "安裝完成，已啟動串流伺服器。\n請在瀏覽器輸入：${hostname}:8080"