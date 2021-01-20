//
//  SearchViewController.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//

import UIKit

class SearchViewController: UIViewController {
    
    //MARK: - Property
    let searchView = SearchViewCode()
    
    //MARK: - LifeCicle
    override func loadView() {
        super.loadView()
        view = searchView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
    private func makeTableView() {
        searchView.tableView.dataSource = self
        searchView.tableView.delegate = self
        
        searchView.tableView.register(SearchTableViewCell.self, forCellReuseIdentifier: SearchTableViewCell.reuseID)
    }

}

