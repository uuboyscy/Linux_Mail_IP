<div>
  <h1>Let your RaspberryPi send IP by email automatically </br>when network available</h1>
</div>
</br>
<div>
  <b>1.We need to use the command "mail" and "ssmtp" in the package "mailutils".</b>
  </br>
  sudo -i
  </br>
  apt-get install mailutils
  </br></br>
  <b>2.Back up then edit the SSMTP config file.(Gmail is suggested)</b>
  </br>
  cp /etc/ssmtp/ssmtp.conf /etc/ssmtp/ssmtp.conf.bak
  </br>
  vi /etc/ssmtp/ssmtp.conf
  
  <table border='1'>		
		
		# 接收系統郵件的 Email
		root=yourEmailAddress@gmail.com
		# 使用 GMail 的 MTA 送信
		mailhub=smtp.gmail.com:587

		# 設定 hostname
		hostname=raspberrypi

		# 允許使用者設定 Email 的 From 欄位
		FromLineOverride=YES

		# Google 帳號與密碼
		AuthUser=yourEmailAddress@gmail.com
		AuthPass=yourPassWord

		# 啟用安全加密連線
		UseSTARTTLS=YES
		UseTLS=YES

		# 輸出除錯資訊
		Debug=YES	
		
  </table>
  
  </br></br>
  <b>3.Test if you can receive the email.</b>
  </br>
  echo "<i>This is a test</i>" | ssmtp <i>recipient</i>@<i>your.domain.com</i>
  </br>
  echo "<i>This is a test</i>" | mail -s "<i>subject</i>" <i>recipient</i>@<i>your.domain.com</i>
  </br></br>
  <b>4.Now you can download this shell script
  </br>
  <a href="https://github.com/uuboyscy/LinuxShellScript/blob/master/Radpbian/ipStart.sh">ipStart.sh</a>
  </br></br>
  5.Put it in anywhere you like(maybe in home of root)</b>
  </br></br>
  <b>6.Modify the email in the script
  </br>
  Gmail, Hotmail or you can try any other email address</b>
  </br></br>
  <b>7.Modify the script to be execuable</b>
  </br>
  chmod 755 ~/ipStart.sh
  </br></br>
  <b>8.Edit /etc/profile</b>
  </br>
  echo "cd ~;./ipStart.sh" >> /etc/profile;source /etc/profile
  </br>  
</div>
</br>
<b>9.After all, check your mailbox, 
</br>
you will get the IP from raspberry as shown in the photo below
</br>
Then enjoy your connection!</b>
</br>
</br>
<img src="/IMG_0377.png" width="50%" height="50%">
</br></br></br>
<b>Additionally, you can download this script</br>
it will running in background and keep checking whether the network is available</br>
<a href="https://github.com/uuboyscy/LinuxShellScript/blob/master/Radpbian/checkNetworkAvailable.sh">checkNetworkAvailable.sh</a></br>
Put it in anywhere you like(maybe in home of root)
</b>
</br>
echo "cd ~;./checkNetworkAvailable.sh &" >> /etc/profile;source /etc/profile
