import http.client

conn = http.client.HTTPSConnection("api.testmail.top")

headers = {
    'Authorization', "Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX"
    }

conn.request("GET", "/domain/check?data=example%40mail.com&ip=8.8.8.8", headers=headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))