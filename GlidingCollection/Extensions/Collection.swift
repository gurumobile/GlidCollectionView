//
//  Collection.swift
//  GlidingCollection
//
//  Created by sambo on 05/05/2017.
//  Copyright © 2017 sambo. All rights reserved.
//

import Foundation

// :nodoc:
extension Collection {
  subscript(safe index: Index) -> Generator.Element? {
    return index >= startIndex && index < endIndex ? self[index] : nil
  }
}
