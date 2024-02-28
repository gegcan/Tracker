//
//  IrregularEvent.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 27.02.2024.
//

import UIKit

struct IrregularEvent {
    let id: UUID
    let name: String
    let category: IrregularEventCategory
    let emoji: String
    let color: UIColor
    let dayCounter: Int
}
