var client = new HttpClient();
var request = new HttpRequestMessage
{
    Method = HttpMethod.Get,
    RequestUri = new Uri("https://api.testmail.top/domain/check/data=example%40mail.com&ip=8.8.8.8""),
    Headers =
    {
        { "Authorization", "Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX" },
    },
};
using (var response = await client.SendAsync(request))
{
    response.EnsureSuccessStatusCode();
    var body = await response.Content.ReadAsStringAsync();
    Console.WriteLine(body);
}