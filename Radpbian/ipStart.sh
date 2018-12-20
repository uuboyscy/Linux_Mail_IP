#!/bin/bash

#check if network availible
while true
do
TIMEOUT=7
SITE_TO_CHECK="https://www.ptt.cc/bbs/index.html"
RET_CODE=`curl -I -s --connect-timeout $TIMEOUT $SITE_TO_CHECK -w %{http_code} | tail -n 1`
if [ "x$RET_CODE" = "x200" ]; then
echo "Network availible, sending Email..."
break
else
echo "Connecting network..."
sleep 3s
fi
done

sleep 3s

# get the IP address of eth0 and wlan0
#rm /home/pi/Desktop/ipTmp
echo "==============================" > /home/pi/Desktop/ipTmp
echo "$(date)" >> /home/pi/Desktop/ipTmp
echo "" >> /home/pi/Desktop/ipTmp
echo "eth0 :" >> /home/pi/Desktop/ipTmp
ifconfig eth0 | sed -n "2,2p" | awk '{print substr($2,1)}' >> /home/pi/Desktop/ipTmp
echo "" >> /home/pi/Desktop/ipTmp
echo "wlan0 :" >> /home/pi/Desktop/ipTmp
ifconfig wlan0 | sed -n "2,2p" | awk '{print substr($2,1)}' >> /home/pi/Desktop/ipTmp
echo "" >> /home/pi/Desktop/ipTmp
echo "--Enjoy!--" >> /home/pi/Desktop/ipTmp
echo "==============================" >> /home/pi/Desktop/ipTmp

cat /home/pi/Desktop/ipTmp

# send Email 
cat /home/pi/Desktop/ipTmp | mail -s "IP Address of Raspberry Pi" aegis1232@yahoo.com.tw &
cat /home/pi/Desktop/ipTmp | mail -s "IP Address of Raspberry Pi" aegis1232@hotmail.com.tw &
cat /home/pi/Desktop/ipTmp | mail -s "IP Address of Raspberry Pi" aegis12321@gmail.com &
cat /home/pi/Desktop/ipTmp | mail -s "IP Address of Raspberry Pi" aegis123214@gmail.com &
