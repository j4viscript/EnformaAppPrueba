//
//  APICall.swift
//  Enforma
//
//  Created by Javier Oskar Murillo Cota on 16/03/23.
//

import Foundation


/*let parameters = "{\r\n    \"email\": \(email)\",\r\n    \"password\": "\(password)\"\r\n}"
let postData = parameters.data(using: .utf8)

var request = URLRequest(url: URL(string: "https://panel.enforma.com.mx/api/login")!,timeoutInterval: Double.infinity)
request.addValue("application/json", forHTTPHeaderField: "Accept")
request.addValue("application/json", forHTTPHeaderField: "Content-Type")

request.httpMethod = "POST"
request.httpBody = postData

let task = URLSession.shared.dataTask(with: request) { data, response, error in
  guard let data = data else {
    print(String(describing: error))
    return
  }
  print(String(data: data, encoding: .utf8)!)
}

task.resume()*/



