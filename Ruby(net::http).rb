require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://api.testmail.top/domain/check/data=example%40mail.com&ip=8.8.8.8")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Authorization"] = 'Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX'

response = http.request(request)
puts response.read_body