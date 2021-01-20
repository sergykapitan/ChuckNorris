//
//  APIViewCode.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//

import Foundation
import UIKit
import WebKit


final class APIViewCode: UIView {
    
    let brouserApi: WKWebView = {
        let brouser = WKWebView()
        return  brouser
    }()
    
    //MARK: - initial
    override init(frame: CGRect) {
        super.init(frame: frame)
        createWebViewLayer()
    }
    
    
    func createWebViewLayer() {
       addSubview(brouserApi)
        brouserApi.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
