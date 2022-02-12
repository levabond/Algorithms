//
//  SquaresOfaSortedArray.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 09.02.2022.
//

import Foundation

class SquaresOfaSortedArray {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        
        for num in nums {
            result.append(num * num)
        }
        
        return insertionSort(result)
        
    }
    
    func insertionSort(_ nums: [Int]) -> [Int] {
        guard nums.count >= 2 else { return nums }
        
        var sortedArr = nums
        
        for index in 1..<sortedArr.count {
            var currentIndex = index
            while currentIndex > 0, sortedArr[currentIndex - 1] > sortedArr[currentIndex] {
                let temp = sortedArr[currentIndex]
                sortedArr[currentIndex] = sortedArr[currentIndex-1]
                sortedArr[currentIndex-1] = temp
                currentIndex -= 1
            }
        }
        
        return sortedArr
    }
}
