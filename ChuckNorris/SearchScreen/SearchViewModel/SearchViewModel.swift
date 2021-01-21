//
//  SearchViewModel.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//

import Foundation
protocol TrackDelegate: class {
    func update()
}

class SearchViewModel {
    
    /*ViewModel - основная цель позволить Controller беспокоиться о View
     1. Data
     2. Service Calls
     3. Business Logic
     4. Data Binding - подключение View к источнику данных - Property Observer & Communication Pattern
    */
    
    weak var delegate: TrackDelegate?
    var networkService = NetworkService()
    var jokes = [Joke]() {
        didSet {
            let userInfo: [String:SearchViewModel] = ["SearchViewModel":self]

            NotificationCenter.default.post(name: Notification.Name.AlbumNotification, object: nil, userInfo: userInfo)
        }
    }
//
//    var tracks = [Track]() {
//            didSet {
//                delegate?.update()
//
//            }
//        }
//
    
    var lastcountJokes = "0"
    
//    func delete(text: History) {
//      //  CoreManager.shared.deleteText(text)
//        delegate?.update()
//    }
//    func save(text: History) {
//      //  CoreManager.shared.save(text)
//        delegate?.update()
//    }
//    func shared () -> ([History]) {
//        let history = CoreManager.shared.history()
//        return history
 //   }
    
    
    
//    var currentAlbum: Album! {
//        didSet {
//            ItunesService.shared.getTracks(for: currentAlbum) { [unowned self] trks in
//                self.tracks = trks
//            }
//        }
//    }
    
    func get(countJokes: String ) {
        lastcountJokes = countJokes
        print(lastcountJokes)
      //  ItunesService.shared.getAlbums(for: search) { [weak self] albms in
       //     self?.albums = albms
        networkService.fetchJokes(countJokes: countJokes)
        }
        
  //  }
    
}
