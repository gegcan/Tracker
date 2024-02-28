//
//  TrackerCategoryModel.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 25.02.2024.
//

import Foundation

// сущность для хранения трекеров по категориям
struct TrackerCategory {
    let categoryName: String
    
    let trackers: [Tracker]
    
    func tracker(at index: Int) -> Tracker? {
        guard index >= 0, index < trackers.count else { return nil }
        return tracker(at: index)
    }
}
