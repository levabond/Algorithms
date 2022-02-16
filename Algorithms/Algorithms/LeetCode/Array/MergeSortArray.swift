//
//  MergeSortArray.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 16.02.2022.
//

import Foundation

class MergeSortArray {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var startSortIndex = 0
        
        var tempIndex = 0
        for num in 0..<m {
            startSortIndex += 1
        }
        
        var index = 0
        while index < n {
            nums1[startSortIndex] = nums2[index]
            
            index+=1
            startSortIndex += 1
        }
        
        nums1.sort()
    }
  
  func merge2(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
         var array = Array<Int>()
          for i in 0..<m {
               array.append(nums1[i])
          }
          for j in 0..<n {
             array.append(nums2[j])
          }
         
         array.sort()
         nums1 = array
     }
}
