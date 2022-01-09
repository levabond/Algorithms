//
//  BubleSorting.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 19.12.2021.
//

import Foundation

extension Array where Element: Comparable {
    mutating func bubleSorting() {
        for end in (1..<count).reversed() {
            var swapped = false
            for current in 0..<end {
                if self[current] > self[current + 1] {
                    self.swapAt(current, current + 1)
                    swapped = true
                }
            }
            if !swapped {
                return
            }
        }
    }
}

func bubleSort<T: Comparable>(array: inout [T]) -> [T] {
    for i in 0..<array.count {
      for j in 1..<array.count - i {
        if array[j] < array[j-1] {
          let tmp = array[j-1]
          array[j-1] = array[j]
          array[j] = tmp
        }
      }
    }
    return array
}
