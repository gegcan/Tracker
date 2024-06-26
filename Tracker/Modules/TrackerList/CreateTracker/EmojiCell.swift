//
//  EmojiCell.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 27.03.2024.
//

import UIKit

// MARK: - Class

final class EmojiCell: UICollectionViewCell {
    // MARK: - Private properties
    private let emojiLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.font = Resources.Fonts.emoji
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Inits
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureEmojiCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Public methods

extension EmojiCell {
    func configureCell(emoji: String) {
        emojiLabel.text = emoji
    }
}

// MARK: - Configure EmojiCell UI Section

private extension EmojiCell {
    func configureEmojiCell() {
        contentView.addSubview(emojiLabel)
        configureEmojiCellConstraints()
    }
    func configureEmojiCellConstraints() {
        NSLayoutConstraint.activate([
            emojiLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            emojiLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            emojiLabel.widthAnchor.constraint(equalToConstant: Resources.Dimensions.optionCell),
            emojiLabel.heightAnchor.constraint(equalToConstant: Resources.Dimensions.optionCell)
        ])
    }
}
