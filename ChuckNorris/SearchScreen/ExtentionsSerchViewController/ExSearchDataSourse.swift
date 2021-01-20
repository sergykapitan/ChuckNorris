//
//  ExSearchDataSourse.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//

import Foundation
import UIKit


extension SearchViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return viewModel.shared().count
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
      //  let text = viewModel.shared()[indexPath.row].searchText
       // cell.titleLabel.text = "Jokes"
        cell.titleLabel.text = "Jokes"
        return cell
    }
}
