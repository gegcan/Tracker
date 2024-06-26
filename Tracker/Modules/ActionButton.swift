//
//  ActionButton.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 27.03.2024.
//

import UIKit

// MARK: - Class

final class ActionButton: UIButton {
    // MARK: - Inits
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public method
    
    override func draw(_ rect: CGRect) {
        self.addTarget(self, action: #selector(tapped), for: .touchDown)
        self.addTarget(self, action: #selector(untapped), for: .touchUpInside)
    }
}

// MARK: - Private methods

private extension ActionButton {
    func setupButton() {
        setTitleColor(.ypWhite, for: .normal)
        setTitleColor(.ypGray, for: .focused)
        setTitleColor(.ypLightGray, for: .disabled)
        backgroundColor = .ypBlack
        titleLabel?.font = Resources.Fonts.titleUsual
        layer.cornerRadius = Resources.Dimensions.cornerRadius
        layer.masksToBounds = true
    }
    
    // MARK: - Animation effects for custom buttons
    
    @objc func tapped() {
        self.alpha = 0.7
    }
    
    @objc func untapped() {
        self.alpha = 1
    }
}
