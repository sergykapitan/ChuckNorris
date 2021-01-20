//
//  ExTextFieldDelegate.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//

import Foundation
import UIKit
extension SearchViewController:UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
            if let x = string.rangeOfCharacter(from: NSCharacterSet.decimalDigits) {
               return true
            } else {
                print("Noy")
            return false
         }
}
}
