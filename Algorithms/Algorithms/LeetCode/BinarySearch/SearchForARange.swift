//
//  SearchForARange.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 16.02.2022.
//

import Foundation

class SearchForARange {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        guard !nums.isEmpty else {
            return [-1, -1]
        }
        
        return [searchStartIdx(nums, target), searchEndIdx(nums, target)]
    }
    
    private func searchStartIdx(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1
        
        while left + 1 < right {
            let mid = (right - left) / 2 + left
            
            if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        return nums[left] == target ? left : nums[right] == target ? right : -1
    }
    
    private func searchEndIdx(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1
        
        while left + 1 < right {
            let mid = (right - left) / 2 + left
            
            if nums[mid] > target {
                right = mid - 1
            } else {
                left = mid
            }
        }
        
        return nums[right] == target ? right : nums[left] == target ? left : -1
    }
}
