//
//  FileManager.swift
//  GlidingCollection
//
//  Created by sambo on 05/05/2017.
//  Copyright © 2017 sambo. All rights reserved.
//

import Foundation


extension FileManager {
  
  func fileUrls(for types: String..., fileName: String) -> [URL] {
    let bundlePath = Bundle.main.bundlePath
    let directoryEnumerator = enumerator(atPath: bundlePath)
    
    var paths = [URL]()
    
    while let path = directoryEnumerator?.nextObject() as? String {
      let url = URL(fileURLWithPath: path)
      for type in types {
        if
          url.path.lowercased().contains(fileName.lowercased())
          && url.path.contains(type) {
          let url = Bundle.main.bundleURL.appendingPathComponent(path)
          paths.append(url)
        }
      }
    }
    
    return paths
  }
  
}
