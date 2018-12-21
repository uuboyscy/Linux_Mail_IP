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
	<tr>
		
			# 接收系統郵件的 Email</br>
			root=<i>yourEmailAddress</i>@gmail.com</br></br>

			# 使用 GMail 的 MTA 送信</br>
			mailhub=smtp.gmail.com:587</br></br>

			# 設定 hostname</br>
			hostname=<i>raspberrypi</i></br></br>

			# 允許使用者設定 Email 的 From 欄位</br>
			FromLineOverride=YES</br></br>

			# Google 帳號與密碼</br>
			AuthUser=<i>yourEmailAddress</i>@gmail.com</br>
			AuthPass=<i>yourPassWord</i></br></br>

			# 啟用安全加密連線</br>
			UseSTARTTLS=YES</br>
			UseTLS=YES</br></br>

			# 輸出除錯資訊</br>
			Debug=YES
		
	</tr>
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
