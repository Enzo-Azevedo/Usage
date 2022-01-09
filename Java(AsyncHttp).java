AsyncHttpClient client = new DefaultAsyncHttpClient();
client.prepare("GET", "https://api.testmail.top/domain/check/data=example%40mail.com&ip=8.8.8.8"))
	.setHeader("Authorization", "Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX")
	.execute()
	.toCompletableFuture()
	.thenAccept(System.out::println)
	.join();

client.close();