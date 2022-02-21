//
//  IsPerfectSquare.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 19.02.2022.
//

import Foundation

class isPerfectSquare {
    func isPerfectSquare(_ num: Int) -> Bool {
        var start = 1
        var end = num
        
        while start <= end {
            var mid = start + (end - start) / 2
            
            if mid * mid == num {
                return true
            } else if mid * mid > num {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        
        return false
    }
}
