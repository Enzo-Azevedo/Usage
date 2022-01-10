# How to protect your site from temporary mails using api.testmail.top?

So, below there will be a boring description of the API, while you have enthusiasm, remember the main thing: the main response parameter is **"result":**, if this parameter is **true** - feel free to skip this EMAIL for registration, if **false**, then take your time - tell the user "Register with temporary mails are prohibited by resource policy".

Also, you have a trump card up your sleeve - this is the **"error":**, parameter: if everything goes well, then it is always **0**, if the user makes mistakes, then this parameter takes numerical values, you can, if you wish, set him on the right path, prompting him to check the correctness of the EMAIL input

![Scheme protect with testmail.top](https://testmail.top/images/example.png)

# API: Check Domain/Email mailbox address
```
URL: https://api.testmail.top/domain/check
Method: GET
Example request: https://api.testmail.top/domain/check/data=example@mail.com&ip=8.8.8.8
Headers: Authorization: Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX
```
## Parameters of request

| Parameter  | Description|
| ------------- | ------------- |
| data  | Domain or full Email address  |
| ip  | Optional parameter. The IP address of the client that sends the request to your resource is required for a more detailed display of statistics  |

## Headers of request
| Header  | Description|
| ------------- | ------------- |
| Authorization | Bearer authentication, your unique [JWT token](https://jwt.io/), which is an API key, you can get by [Registering](https://testmail.top/en/signup) in your [Personal Account](https://testmail.top/project) |

# [Lets practice](https://testmail.top/en/example#letspractice)

# In any incomprehensible situation, just tell the user to check the correct spelling of EMAIL

This is necessary so that there is no false expectation on the part of the user of the final stage of registration - confirmation of mail

| Error code  | Description|
| ------------- | ------------- |
| **"error":**  | **"message":**  |
| 31 | "Invalid email address" - syntax error in writing mailbox address |
| 32 | "Invalid data" - syntax error in writing mailbox address |
| 33 | "Invalid domain" - syntax error in writing mailbox address |
| 34 | "Typo! This domain 1 level does not exist" - no such domain exists |
| 35 | "No mail server is attached to this domain" - mailbox domain is unable to receive emails |
| 36 | "No mail server is attached to this domain" - mailbox domain is unable to receive emails |
| 37 | "Incoming data is too long" - too long string |
| 777 | "Unknown Error" - God knows what it is, I hope no one pops out🤞 |
