CURL *hnd = curl_easy_init();

curl_easy_setopt(hnd, CURLOPT_CUSTOMREQUEST, "GET");

curl_easy_setopt(hnd, CURLOPT_URL, "https://api.testmail.top/domain/check/data=example%40mail.com&ip=8.8.8.8");

struct curl_slist *headers = NULL;m");
headers = curl_slist_append(headers, "Authorization: Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX");
curl_easy_setopt(hnd, CURLOPT_HTTPHEADER, headers);

CURLcode ret = curl_easy_perform(hnd);
