import requests

def lineNotify(token, msg):

    url = "https://notify-api.line.me/api/notify"
    headers = {
        "Authorization": "Bearer " + token, 
        "Content-Type" : "application/x-www-form-urlencoded"
    }
    
    payload = {'message': msg}
    r = requests.post(url, headers = headers, params = payload)
    return r.status_code

ipInfo = open('/home/pi/Desktop/ipTmp', 'r', encoding = 'utf-8')
ip = ipInfo.read()
ipInfo.close()

tokenInfo = open('/home/pi/Desktop/ShellScript/lineToken', 'r', encoding = 'utf-8')
token = tokenInfo.read()
tokenInfo.close()
msg = ip

lineNotify(token, msg)
