//
//  APIViewController.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//

import Foundation
import UIKit


class APIViewController: UIViewController {
    
    //MARK: - Property
    let apiView = APIViewCode()
    
    
    //MARK: - LifeCicle
    override func loadView() {
        super.loadView()
        view = apiView
    }
   
    override func viewDidLoad() {
            super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            if let url = URL(string: "https://www.apple.com") {
            let request = URLRequest(url: url)
            apiView.brouserApi.load(request)
        }
  
        
    }

}


