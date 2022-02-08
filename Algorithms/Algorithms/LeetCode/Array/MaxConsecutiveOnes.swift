//
//  MaxConsecutiveOnes.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 04.02.2022.
// https://leetcode.com/explore/learn/card/fun-with-arrays/521/introduction/3238/

import Foundation

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var counter = 0
        var maxConsecutive = 0
        var i = 0

        while i < nums.count {
            if nums[i] == 1 {
                counter+=1
               if maxConsecutive < counter {
                   maxConsecutive = counter
               }
            } else {
                counter = 0
            }
            
            i+=1
        }
        
        return maxConsecutive
    }
