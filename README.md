<div>
  <h1>Let your RaspberryPi send IP by email automatically </br>when network available</h1>
</div>
</br>
<div>
  sudo -i
  </br>
  apt-get install mailutils
  </br>
  Download this shell script
  </br>
  <a href="https://github.com/uuboyscy/LinuxShellScript/blob/master/Radpbian/ipStart.sh">ipStart.sh</a>
  </br>
  Put it in anywhere you like(maybe in home of root)
  </br>
  Modify the email in the script
  </br>
  Gmail is not suggested, I prefer hotmail or you can try any other email
  </br>
  Modify the script to be execuable
  </br>
  chmod 755 ~/ipStart.sh
  </br>
  Edit /etc/profile
  </br>
  echo "cd ~;./ipStart.sh" >> /etc/profile;source /etc/profile
  </br>  
</div>
</br>
After all, check your mailbox, 
</br>
you will get the IP from raspberry as shown in the photo below
</br>
Then enjoy your connection!
</br>
<img src="/IMG_0377.png" width="28%" height="28%">
