//
//  UICollectionView+Extensions.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 27.03.2024.
//

import UIKit.UICollectionView

extension UICollectionView {
  func reloadItems(inSection section: Int) {
    reloadItems(at: (0..<numberOfItems(inSection: section)).map {
      IndexPath(item: $0, section: section)
    })
  }
}
