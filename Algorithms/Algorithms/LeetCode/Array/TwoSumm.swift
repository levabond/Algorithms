//
//  LongestSubstring.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 09.01.2022.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var index = 0
    var indexes: [Int] = []
    
    while index < nums.count {
        var tempIndex = index + 1
        
        while tempIndex < nums.count {
            if nums[index] + nums[tempIndex] == target {
                indexes = [index, tempIndex]
                break
            }
            
            tempIndex += 1
        }
        
        index += 1
    }
    
    return indexes
}
