//
//  MergeSort.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 23.12.2021.
//

import Foundation
import Metal

func mergeSort<Element: Comparable>(_ arr: [Element]) -> [Element] {
    let midlleIndex = arr.count / 2

    let leftArray = Array(arr[0..<midlleIndex])
    let rightArray = Array(arr[midlleIndex..<arr.count])

    return merge(leftArray, rightArray)
}

private func merge<Element: Comparable>(_ left: [Element], _ right: [Element]) -> [Element] {
    var orderedArr: [Element] = []
    var leftIndex = 0
    var rightIndex = 0

    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]

        if leftElement < rightElement {
            orderedArr.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightElement {
            orderedArr.append(rightElement)
            rightIndex += 1
        } else {
            orderedArr.append(leftElement)
            leftIndex += 1
            orderedArr.append(rightElement)
            rightIndex += 1
        }
    }

    while leftIndex < left.count {
        orderedArr.append(left[leftIndex])
        leftIndex += 1
    }

    while rightIndex < right.count {
        orderedArr.append(right[rightIndex])
        rightIndex += 1
    }

    return orderedArr
}
