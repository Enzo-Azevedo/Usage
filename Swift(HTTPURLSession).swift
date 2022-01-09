import Foundation

let headers = [
	"Authorization": "Bearer XXXXXXXXXX.XXXXXXXXXX.XXXXXXXXXX"
]

let request = NSMutableURLRequest(url: NSURL(string: "https://api.testmail.top/domain/check/data=example%40mail.com&ip=8.8.8.8")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)
request.httpMethod = "GET"
request.allHTTPHeaderFields = headers

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
	if (error != nil) {
		print(error)
	} else {
		let httpResponse = response as? HTTPURLResponse
		print(httpResponse)
	}
})

dataTask.resume()