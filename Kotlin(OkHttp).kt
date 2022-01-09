val client = OkHttpClient()

val request = Request.Builder()
	.url("https://api.testmail.top/domain/check/data=example%40mail.com&ip=8.8.8.8")
	.get()
	.addHeader("Authorization", "Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX")
	.build()

val response = client.newCall(request).execute()