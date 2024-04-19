//
//  TrackerTests.swift
//  TrackerTests
//
//  Created by Александр Гегешидзе on 17.04.2024.
//

import XCTest
import SnapshotTesting
@testable import Tracker

final class TrackerTests: XCTestCase {

  func testViewController() {
    let vc = TabBarViewController()
    isRecording = false
    assertSnapshot(of: vc, as: .image(traits: .init(userInterfaceStyle: .dark)))
    assertSnapshot(of: vc, as: .image(traits: .init(userInterfaceStyle: .light)))
  }
}
