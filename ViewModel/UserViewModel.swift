//
//  PostViewModel.swift
//  Enforma
//
//  Created by Javier Oskar Murillo Cota on 13/03/23.
//

import Foundation


class UserViewModel: ObservableObject{
    @Published var aunthenticated = 0
    func login(email: String, password: String) {
        let parameters = "{\r\n    \"email\": \"(email)\",\r\n    \"password\": \"(email)\"\r\n}"
        var request = URLRequest(url: URL(string: "https://panel.enforma.com.mx/api/login")!,timeoutInterval: Double.infinity)
        let postData = parameters.data(using: .utf8)
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        request.httpBody = postData
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
           guard let data = data else {
                print(String(describing: error))
                return
              }
            do{
                let datos = try JSONDecoder().decode(DataClass.self, from: data)
                if !datos.token.isEmpty{
                    DispatchQueue.main.async{
                        self.aunthenticated = 1
                    }
                }
            }catch let error as NSError{
                print("Error al hacer POST", error.localizedDescription)
                DispatchQueue.main.async {
                    self.aunthenticated = 2
                }
            }
          print(String(data: data, encoding: .utf8)!)
        }
        
        /*URLSession.shared.dataTask(with: request){data, response, error in
            if let response = response{
                print(response)
            }
            guard let data = data else {return}
            do{
                let datos = try JSONDecoder().decode(DataClass.self, from: data)
            }catch let error as NSError{
                print("Error al hacer POST", error.localizedDescription)
                DispatchQueue.main.async {
                    self.aunthenticated = 2
                }
            }*/
        .resume()
    }
}
