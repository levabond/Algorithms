//
//  FindPeakElement  .swift
//  Algorithms
//
//  Created by Лев Бондаренко on 15.02.2022.
//

import Foundation

class FindPeakElement {
    func findPeakElement(_ nums: [Int]) -> Int {
        var start = 0
        var end = nums.count - 1


        while start < end {
            var m = start + (end - start) / 2
            var right = m != end ? nums[m+1] : 0
            if nums[m] < right {
                start = m + 1
            } else {
                end = m
            }
        }
        
       return start
    }
}
