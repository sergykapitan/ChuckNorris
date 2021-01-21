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
    let viewModel = SearchViewModel()
    
    //MARK: - LifeCicle
    override func loadView() {
        super.loadView()
        view = searchView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        searchView.inputCountTextField.delegate = self
        actionButtonLoad()
    }
    //MARK: - Metods
    private func makeTableView() {
        searchView.tableView.dataSource = self
        searchView.tableView.delegate = self
        
        searchView.tableView.register(SearchTableViewCell.self, forCellReuseIdentifier: SearchTableViewCell.reuseID)
    }
    //MARK: - Action
    private func actionButtonLoad() {
        searchView.buttonLoad.addTarget(self, action: #selector(loadJokes), for: .touchUpInside)
        
    }
    //MARK: - Selector
    @objc func loadJokes(sender: UIButton) {       
        let countJokes = searchView.inputCountTextField.text
        countJokes
            .then{viewModel.get(countJokes: $0)}
            .otherwise { return }
    }
    //MARK: - NotificationCenter
    private func setupGrid() {
        NotificationCenter.default.addObserver(forName: Notification.Name.AlbumNotification, object: nil, queue: .main) { note in
            guard let userInfo = note.userInfo as? [String:SearchViewModel] else { return }
           // self.viewModel = userInfo["ViewModel"]!
            let someString = userInfo["SearchViewModel"]
            print("someString = \(someString)")
        }
    }

}

