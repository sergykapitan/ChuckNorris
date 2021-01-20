//
//  SearchViewCode.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//

import Foundation
import UIKit

final class SearchViewCode: UIView {

    //MARK: - First layer in TopView
    let cardView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 0.8
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
            return view
        }()
    let generalView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 0.8
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
            return view
        }()
    
    var tableView: UITableView = {
        let table = UITableView()
        return table
    }()
    
    let buttonLoad: UIButton = {
        let button = UIButton()
        button.setTitle("LOAD", for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    let inputCountTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .brown
        return textField
    }()

    //MARK: - initial
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createCardViewLayer()
    
    }
    
    //MARK: - constraint First Layer
    
    func createCardViewLayer() {
        addSubview(generalView)
        generalView.anchor(top: safeAreaLayoutGuide.topAnchor,
                           left: safeAreaLayoutGuide.leftAnchor,
                           right: safeAreaLayoutGuide.rightAnchor,
                           bottom: safeAreaLayoutGuide.bottomAnchor ,
                           paddingTop: 10, paddingLeft: 10, paddingRight: 10, paddingBottom: 10)
        generalView.addSubview(buttonLoad)
               buttonLoad.anchor( bottom: generalView.bottomAnchor,
                                  paddingBottom: 10,
                                  width: 100,height: 50
                
               )
        buttonLoad.centerX(inView: generalView)
        generalView.addSubview(inputCountTextField)

        inputCountTextField.anchor(bottom: buttonLoad.topAnchor,
                                   paddingBottom: 10,
                                   width: 100, height: 30)
        inputCountTextField.centerX(inView: generalView)
        
       
        generalView.addSubview(cardView)
        cardView.anchor(top: generalView.topAnchor,
                        left: generalView.leftAnchor,
                        right: generalView.rightAnchor,
                        bottom: inputCountTextField.topAnchor,
                        paddingTop: 10, paddingLeft: 10, paddingRight: 10,paddingBottom: 10
        )

        cardView.addSubview(tableView)
        tableView.fillSuperview()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

