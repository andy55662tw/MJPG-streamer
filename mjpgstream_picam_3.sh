sudo modprobe bcm2835-v4l2
cd code/mjpg-streamer
./mjpgstreamer -i "./inputuvc.so -d /dev/video0 -n -y f 15 -r 640x480" -o "./output_http.so -n -w /usr/local/www" &
hostname="$(hostname -I)"
echo "安裝完成，已啟動串流伺服器。\n請在瀏覽器輸入：${hostname}:8080"