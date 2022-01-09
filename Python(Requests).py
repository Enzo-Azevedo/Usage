import requests

url = "https://api.testmail.top/domain/check/"

querystring = {"data":"example@mail.com","ip":"8.8.8.8"}

headers = {
    'Authorization', "Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX"
    }

response = requests.request("GET", url, headers=headers, params=querystring)

print(response.text)