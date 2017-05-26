//
//  MainTabBarController.swift
//  Uhome
//
//  Created by menhao on 17/5/24.
//  Copyright © 2017年 menhao. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    //MARK: - life cycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.setChildViewControllers()
    }
    
    func setChildViewControllers() {

        let firstVC = FirstViewController()
        firstVC.title = "首页"
        firstVC.view.backgroundColor = UIColor.randomColor
        let firstNavVC = MainNavigationController(rootViewController:firstVC)
        firstNavVC.tabBarItem.title = "门"
        firstNavVC.tabBarItem.image = UIImage.init(named: "ic_tab_home_default")
        firstNavVC.tabBarItem.selectedImage = UIImage.init(named: "ic_tab_home_selected")
        
        let secondVC = SecondViewController()
        secondVC.view.backgroundColor = UIColor.randomColor
        secondVC.title = "咨询"
        let secondNavVC = MainNavigationController(rootViewController:secondVC)
        secondNavVC.tabBarItem.title = "大"
        secondNavVC.tabBarItem.image = UIImage.init(named: "ic_tab_information_default")
        secondNavVC.tabBarItem.selectedImage = UIImage.init(named: "ic_tab_information_selected")
        
        let thirdVC = ThirdViewController()
        thirdVC.view.backgroundColor = UIColor.randomColor
        thirdVC.title = "门店"
        let thirdNavVC = MainNavigationController(rootViewController:thirdVC)
        thirdNavVC.tabBarItem.title = "侠"
        thirdNavVC.tabBarItem.image = UIImage.init(named: "ic_tab_stores_default")
        thirdNavVC.tabBarItem.selectedImage = UIImage.init(named: "ic_tab_stores_selected")
        
        self.addChildViewController(firstNavVC)
        self.addChildViewController(secondNavVC)
        self.addChildViewController(thirdNavVC)
        
    }
}



