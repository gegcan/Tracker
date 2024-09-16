//
//  UserDefaults+Extension.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 07.04.2024.
//

import Foundation

extension UserDefaults {
    private enum UserDefaultsKeys: String {
        case hasOnboarded
        case pinnedCategoryId
    }
    
    var hasOnboarded: Bool {
        get {
            bool(forKey: UserDefaultsKeys.hasOnboarded.rawValue)
        }
        set {
            setValue(newValue, forKey: UserDefaultsKeys.hasOnboarded.rawValue)
        }
    }
    
    var pinnedCategoryId: String {
        get {
            string(forKey: UserDefaultsKeys.pinnedCategoryId.rawValue) ?? ""
        }
        set {
            setValue(newValue, forKey: UserDefaultsKeys.pinnedCategoryId.rawValue)
        }
    }
}
