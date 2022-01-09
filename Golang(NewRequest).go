package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

func main() {

	url := "https://api.testmail.top/domain/check/data=example@mail.com&ip=8.8.8.8"

	req, _ := http.NewRequest("GET", url, nil)

	req.Header.Add("Authorization", "Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
