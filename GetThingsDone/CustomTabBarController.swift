//
//  CustomTabBarController.swift
//  GetThingsDone
//
//  Created by Marc Jacques on 8/15/21.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let activityTVC = ActivityTableVC()
        let activityNavController = UINavigationController(rootViewController: activityTVC)
        activityNavController.tabBarItem.title = "Activity"
        activityNavController.tabBarItem.image = UIImage(systemName: "timer")
        
        viewControllers = [activityNavController]
    }
}
