//
//  Jokes.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//

import Foundation

struct Jokes: Codable {
    var value: [Joke]
}
struct Joke: Codable {
    var id : Int
    var joke: String
   // var categories: String
}
