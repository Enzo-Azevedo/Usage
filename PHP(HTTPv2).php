<?php

$client = new http\Client;
$request = new http\Client\Request;

$request->setRequestUrl('https://api.testmail.top/domain/check/');
$request->setRequestMethod('GET');
$request->setQuery(new http\QueryString([
	'data' => 'example@mail.com',
	'ip' => '8.8.8.8'
]));

$request->setHeaders([
	'Authorization' => 'Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX',
]);

$client->enqueue($request)->send();
$response = $client->getResponse();

echo $response->getBody();