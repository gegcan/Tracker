//
//  SplashScreenViewController.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 27.03.2024.
//

import UIKit

// MARK: - Class

final class SplashScreenViewController: UIViewController {
    // MARK: - Inits
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life circle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .ypWhite
    }
}
