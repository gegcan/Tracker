//
//  SceneDelegate.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 24.02.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        
        if UserDefaults.standard.bool(forKey: "alreadyShown") {
            let trackers = TabBarViewController()
            self.window?.rootViewController = trackers
            window?.makeKeyAndVisible()
            window?.windowScene = scene
        } else {
            let onboarding = OnboardingPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
            self.window?.rootViewController = onboarding
            window?.makeKeyAndVisible()
            window?.windowScene = scene
            UserDefaults.standard.set(true, forKey: "alreadyShown")
        }
    }
}

