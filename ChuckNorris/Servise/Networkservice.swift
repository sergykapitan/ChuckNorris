//
//  Networkservice.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//


import Alamofire

class NetworkService {
    
    //http://api.icndb.com/jokes/random
    var jsonPars = JSONParsing()
    
    func fetchJokes(countJokes: String) {
        
        let url = "http://api.icndb.com/jokes/random/" + "\(countJokes)"

        AF.request(url, method: .get,encoding: URLEncoding.default, headers: nil).response { (dataResponse) in
            if let  error = dataResponse.error {
                print("error = \(error.localizedDescription)")
                return
              }
            guard let data = dataResponse.data else { return }
            self.jsonPars.jsonParsing(data: data)
        }
    }
}

