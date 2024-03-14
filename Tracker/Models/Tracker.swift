//
//  TrackerModel.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 25.02.2024.
//

import UIKit

// сущность для хранения информации про трекер
struct Tracker {
    let id: UUID
    let name: String
    let schedule: [WeekDay]
    let color: UIColor
    let emoji: String
    let dayCounter: Int
}
