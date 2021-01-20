//
//  JSONParsing.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//

import Foundation

class JSONParsing {
    
    func jsonParsing(data: Data) -> Jokes {
        
        var jokes: Jokes?
        let decoder = JSONDecoder()
        
        do  {
            let object = try decoder.decode(Jokes.self, from: data)
            jokes = object
            
        } catch let jsonError {
            print("Failed JSONError" , jsonError)
        }
        print("\(jokes)")
        return jokes!
    }
}
