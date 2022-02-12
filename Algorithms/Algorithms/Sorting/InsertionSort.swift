//
//  InsertionSort.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 09.02.2022.
//

import Foundation

func insertionSort(_ array: [Int]) -> [Int] {
  var sortedArray = array       // 1
  for index in 1..<sortedArray.count {     // 2
    var currentIndex = index
    while currentIndex > 0 && sortedArray[currentIndex] < sortedArray[currentIndex - 1] { // 3
      sortedArray.swapAt(currentIndex - 1, currentIndex)
      currentIndex -= 1
    }
  }
  return sortedArray
}

public func insertionSort2<T>(_ collection: inout T) where T: BidirectionalCollection & MutableCollection, T.Element: Comparable {
  guard collection.count >= 2 else {
    return
  }
  for current in collection.indices {
    var shifting = current
    while shifting > collection.startIndex {
      let previous = collection.index(before: shifting)
      if collection[shifting] < collection[previous] {
        collection.swapAt(shifting, previous)
      } else {
        break
      }
      shifting = previous
    }
  }
  
}
