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

func twoSumm2(_ nums: [Int], _ target: Int) -> [Int] {
  var map: [Int: Int] = [:] // key- number (present in nums array and )
  // value - index in nums array
  
  for i in 0..<nums.count{
    let number2 = map[target-nums[i]]
    if number2 == nil{ // number 2 does not exist
      map[nums[i]] = i
      
    } else {
      // number 2 exists
      return [i, number2!]
    }
  }
  return [0, 0]
}
