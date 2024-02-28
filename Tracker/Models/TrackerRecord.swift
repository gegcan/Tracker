//
//  TrackerRecordModel.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 25.02.2024.
//

import Foundation

// сущность для хранения записи о том, что некий трекер был выполнен на некоторую дату
struct TrackerRecord: Hashable {
    let id: UUID
    let date: Date
}
