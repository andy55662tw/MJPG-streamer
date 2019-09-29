#! /bin/bash
#用於下載mjpg影像串流伺服器，並自動啟動伺服器。（此設定檔適用Raspberry Picam）
sudo pkill uv4l
sudo apt-get update
sudo apt-get install uv4l-uvc -y
sudo apt-get install uv4l-xscreen -y
sudo apt-get install uv4l-mjpegstream -y
while true; do
    read -p "Do you want to reboot? [Y/n]:" yn
    case $yn in
        [Yy]* ) echo "Reboot after 3 seconds...";sleep 3s; sudo reboot;;
        [Nn]* ) echo "After rebooting, remember to execute the program \"mjpgstream_picam_3\"";exit;;
        * ) echo "Please answer yes or no.";;
    esac
done