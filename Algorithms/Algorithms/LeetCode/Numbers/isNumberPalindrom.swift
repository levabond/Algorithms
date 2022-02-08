//
//  isNumberPalindrom.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 14.01.2022.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    var num = x
    var reversed = 0
    if x < 0 {
        return false
    }
    
    
    while num > 0 {
        var pop = num % 10
        num /= 10
        reversed = reversed * 10 + pop
    }
    
    
    return x == reversed
}
