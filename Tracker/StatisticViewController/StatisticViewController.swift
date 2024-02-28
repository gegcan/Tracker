//
//  StatisticViewController.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 24.02.2024.
//

import UIKit

final class StatisticViewController: UIViewController {
    
    let statisticLabel: UILabel = {
        let label = UILabel()
        label.text = "Трекеры"
        label.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let smileImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "3"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let smileLabel: UILabel = {
        let label = UILabel()
        label.text = "Анализировать пока нечего"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textAlignment = .center
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupViewLayout()
    }
}

extension StatisticViewController {
    private func setupViewLayout() {
        view.addSubview(statisticLabel)
        view.addSubview(smileImage)
        view.addSubview(smileLabel)
        
        NSLayoutConstraint.activate([
            statisticLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 88),
            statisticLabel.heightAnchor.constraint(equalToConstant: 41),
            statisticLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            statisticLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            smileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            smileImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            smileImage.heightAnchor.constraint(equalToConstant: 80),
            smileImage.widthAnchor.constraint(equalToConstant: 80)
        ])
        
        NSLayoutConstraint.activate([
            smileLabel.topAnchor.constraint(equalTo: smileImage.bottomAnchor, constant: 8),
            smileLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            smileLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            smileLabel.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
}
