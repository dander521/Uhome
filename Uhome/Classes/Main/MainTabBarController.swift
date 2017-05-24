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
        
        let arrTitle = ["1","2","3"]
        
        for i in 0 ..< arrTitle.count {
            
                        let vc =  UIViewController()
            
                        vc.title = arrTitle[i]
            
                        vc.view.backgroundColor = UIColor.randomColor
            
                        let vc1 = MainNavigationController(rootViewController:vc)
                        
                       self.addChildViewController(vc1)
        }
    }
}



