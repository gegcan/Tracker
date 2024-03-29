//
//  TrackerModel.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 25.02.2024.
//

import Foundation

struct Tracker: Hashable {
  let id: UUID
  let title: String
  let emoji: Int
  let color: Int
  let schedule: [Bool]
}

struct TrackerCategory: Hashable {
  let id: UUID
  let name: String
  let items: [Tracker]
}

struct TrackerRecord: Hashable {
  let id: UUID
  let tracker: Tracker
  let dates: [Date]
  let days: Int
}
