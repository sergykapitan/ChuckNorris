//
//  ExSearchDelegate.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//

import Foundation
import UIKit

extension SearchViewController: UITableViewDelegate {
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 128
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
//        let navVC = tabBarController?.viewControllers![0] as! UINavigationController
//        let searchCollViewController = navVC.topViewController as! SearchCollectionViewController
//        let searchText: String = viewModel.shared()[indexPath.row].searchText!
//        searchCollViewController.makeReguest(searchText: searchText)
//        tabBarController?.selectedIndex = 0
        print(indexPath.row)
 
    }
//    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//       
//        let his = viewModel.shared()[indexPath.row]
//        let deleteAction = UIContextualAction(style: .destructive, title: "Удалить") {  (contextualAction, view, boolValue) in
//
//            self.viewModel.delete(text: his)
//            tableView.reloadData()
//       }
//       let swipeActions = UISwipeActionsConfiguration(actions: [deleteAction])
//
//       return swipeActions
//   }
}
