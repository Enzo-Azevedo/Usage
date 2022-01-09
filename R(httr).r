library(httr)

url <- "https://api.testmail.top/domain/check/"

queryString <- list(
  data = "example@mail.com"
  ip = "8.8.8.8",
)

response <- VERB("GET", url, add_headers(Authorization = 'Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX'), query = queryString, content_type("application/octet-stream"))

content(response, "text")