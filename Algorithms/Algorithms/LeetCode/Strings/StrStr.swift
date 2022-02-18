//
//  strStr.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 16.02.2022.
//

import Foundation

class StrStr {
  func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.isEmpty {
      return 0
    }
    
    if let rng = haystack.range(of: needle) {
      return rng.lowerBound.encodedOffset
    }
    return -1
  }
  
  func strStr2(_ haystack: String, _ needle: String) -> Int {
    var haystack = Array(haystack)
    var needle = Array(needle)
    var i = 0
    var j = 0
    
    if needle.count == 0 {
      return 0
    }
    
    while i <= haystack.count - 1 {
      if ( haystack[i] != needle[j] ) { i = i - j; j = 0 }
      else {
        if j == needle.count - 1 { return i + 1 - needle.count }
        j += 1
      }
      i += 1
    }
    return -1
  }
}
