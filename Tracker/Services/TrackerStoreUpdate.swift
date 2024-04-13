//
//  TrackerStoreUpdate.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 07.04.2024.
//

import Foundation

// MARK: - Structures for FRC delegates

struct TrackerStoreUpdate {
    let insertedIndexes: [IndexPath]
    let deletedIndexes: [IndexPath]
    let updatedIndexes: [IndexPath]
}

struct TrackerCategoryStoreUpdate {
    let insertedSectionIndexes: IndexSet
    let deletedSectionIndexes: IndexSet
    let updatedSectionIndexes: IndexSet
}
