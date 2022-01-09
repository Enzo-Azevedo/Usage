const http = require("https");

const options = {
	"method": "GET",
	"hostname": "api.testmail.top",
	"port": null,
	"path": "/domain/check/data=example%40mail.com&ip=8.8.8.8",
	"headers": {
		"Authorization": "Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX",
		"useQueryString": true
	}
};

const req = http.request(options, function (res) {
	const chunks = [];

	res.on("data", function (chunk) {
		chunks.push(chunk);
	});

	res.on("end", function () {
		const body = Buffer.concat(chunks);
		console.log(body.toString());
	});
});

req.end();