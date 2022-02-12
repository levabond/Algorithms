//
//  BinarySearch.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 11.02.2022.
//

import Foundation


class Sqrt {
  func mySqrt(_ x: Int) -> Int {
    var low = 1, high = x
    while low != high {
      var mid = (low + high) / 2
      if mid * mid <= x && (mid + 1) * (mid + 1) > x {
        return mid
      } else if mid * mid > x {
        high = mid - 1
      }
      else {
        low = mid + 1
      }
    }
    return low
  }
  
  func mySqrt2(_ x: Int) -> Int {
    if x == 0 { return 0 }
    if x == 1 { return 1 }
    var result = 0
    var left = 1
    var right = x / 2
    while left <= right  {
      let mid = left + ( right - left) / 2
      if mid  <= x / mid {
        left = mid + 1
        result = mid
      } else {
        right = mid - 1
      }
    }
    
    return result
  }
  
  func mySqrt3(_ x: Int) -> Int {
    var left = 0
    var right = x
    while (left <= right) {
      let mid = left + (right - left) / 2
      if mid * mid == x { return mid }
      if mid * mid > x {
        right = mid - 1
      } else {
        left = mid + 1
      }
    }
    
    return left - 1
  }
}
