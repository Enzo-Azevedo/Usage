import requests

email = "example@gmail.com"

querystring = {"data":f"{email}","ip":"8.8.8.8"}

headers = {'Authorization': "Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX"}

response = requests.get("https://api.testmail.top/domain/check/" , headers=headers, params=querystring)

print(response.text)
