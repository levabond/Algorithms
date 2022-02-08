//
//  MaxZeroes.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 05.02.2022.
// https://leetcode.com/explore/learn/card/fun-with-arrays/511/in-place-operations/3157/

import Foundation

func moveZeroes(_ nums: inout [Int]) {
  var index = 0
  for i in 0..<nums.count {
    if nums[i] != 0 {
      nums[index] = nums[i]
      index += 1
    }
  }
  for i in index..<nums.count {
    nums[i] = 0
  }
}
