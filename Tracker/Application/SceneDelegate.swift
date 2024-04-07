//
//  SceneDelegate.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 24.02.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
        let viewController = UserDefaults.standard.hasOnboarded
        ? TabBarViewController()
        : OnboardingViewController()
        
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        self.window = window
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
}

