//
//  MainTabController.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        viewControllers = [
            generateViewController(rootViewController: SearchViewController(), image: #imageLiteral(resourceName: "search") , title: "Jokes"),
            generateViewController(rootViewController: APIViewController(), image: #imageLiteral(resourceName: "Knob"), title: "API")
        ]
       
    }
    
    private func generateViewController(rootViewController: UIViewController,image: UIImage,title: String) ->UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.image = image
        navigationVC.tabBarItem.title = title
        rootViewController.navigationItem.title = title
        navigationVC.navigationBar.prefersLargeTitles = true
        return navigationVC
    }

}
