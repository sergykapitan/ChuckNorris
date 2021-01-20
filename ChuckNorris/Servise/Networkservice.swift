//
//  Networkservice.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//


import Alamofire

class NetworkService {
    
    //http://api.icndb.com/jokes/random
    var jsonParsing = JSONParsing()
    
    func fetchJokes(countJokes: String) {
        
        let url = "http://api.icndb.com/jokes/random/" + "\(countJokes)"
        //parameters: parameters,
        AF.request(url, method: .get,encoding: URLEncoding.default, headers: nil).response { (dataResponse) in
            if let  error = dataResponse.error {
                print("error = \(error.localizedDescription)")
                return
              }
            guard let data = dataResponse.data else { return }
            self.jsonParsing.jsonParsing(data: data)
//            let decoder = JSONDecoder()
//            do  {
//                let object = try decoder.decode(Jokes.self, from: data)
//                print("object = \(object)")
//                
//            } catch let jsonError {
//                print("Failed JSONError" , jsonError)
//            }
           // let someString = String(data: data, encoding: .utf8)
           // print(someString!)
      }
    }
}

