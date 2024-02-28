//
//  TabBarViewController.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 24.02.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let trackerViewController = TrackersViewController()
        let statisticViewController = StatisticViewController()
        
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.lightGray.cgColor
        guard let trackerImage = UIImage(named: "record.circle.fill"),
              let statisticImage = UIImage(named: "hare.fill") else { fatalError() }
        
        viewControllers = [
            generateNavigationController(rootViewController: trackerViewController, title: "Трекеры", image: trackerImage),
            generateNavigationController(rootViewController: statisticViewController, title: "Статистика", image: statisticImage)
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
