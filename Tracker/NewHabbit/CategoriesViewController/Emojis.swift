//
//  Emojis.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 27.02.2024.
//

struct Emojis {
    
    static let emojis = ["🙂", "😻", "🌺", "🐶", "❤️", "😱", "😇", "😡", "🥶", "🤔", "🙌", "🍔", "🥦", "🏓", "🥇", "🎸", "🏝️", "😪"]
    
    static subscript(_ index: Int) -> String? {
        guard 0..<emojis.count ~= index else { return nil }
        return emojis[index]
    }
    
    static var count: Int {
        emojis.count
    }
}
