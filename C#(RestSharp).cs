var client = new RestClient("https://api.testmail.top/domain/check/data=example%40mail.com&ip=8.8.8.8"");
var request = new RestRequest(Method.GET);
request.AddHeader("Authorization", "Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX");
IRestResponse response = client.Execute(request);