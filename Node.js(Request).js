const request = require('request');

const options = {
  method: 'GET',
  url: 'https://api.testmail.top/domain/check/',
  qs: {data: 'example@mail.com', ip: '8.8.8.8'},
  headers: {
    'Authorization': 'Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX',
    useQueryString: true
  }
};

request(options, function (error, response, body) {
	if (error) throw new Error(error);

	console.log(body);
});