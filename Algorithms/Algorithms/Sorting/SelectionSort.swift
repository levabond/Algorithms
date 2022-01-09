//
//  SelectionSort.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 19.12.2021.
//

import Foundation

func selectionSort<Element>(
    _ array: inout [Element]
) where Element: Comparable {
    for current in 0..<(array.count-1) {
        var lowest = current
        
        for other in (current + 1)..<array.count {
            if array[lowest] > array[other] {
                lowest = other
            }
        }
    
        if lowest != current {
            array.swapAt(lowest, current)
        }
    }
}
