wget --quiet \
	--method GET \
	--header 'Authorization: Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX' \
	--output-document \
	- 'https://api.testmail.top/domain/check/data=example%40mail.com&ip=8.8.8.8'