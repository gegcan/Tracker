//
//  CategoryViewModel.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 07.04.2024.
//

import Foundation

// MARK: - CategoryViewModel

final class CategoryViewModel {
    var onChange: (() -> Void)?
    
    private (set) var categories: [TrackerCategory] = [] {
        didSet {
            onChange?()
        }
    }
    
    private let trackerCategoryStore = TrackerCategoryStore.shared
    
    init() {
        trackerCategoryStore.delegate = self
        fetchCategoriesFromCoreData()
    }
    
    func fetchCategoriesFromCoreData() {
        categories = trackerCategoryStore.allCategories
    }
    
    func addCategory(_ category: TrackerCategory) {
        try? trackerCategoryStore.addNew(category: category)
    }
}

// MARK: - nameTrackerCategoryStoreDelegate

extension CategoryViewModel: TrackerCategoryStoreDelegate {
    func trackerCategoryStore(didUpdate store: TrackerCategoryStore) {
        fetchCategoriesFromCoreData()
    }
}