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
        let ostatoc = num % 10
        num /= 10
        reversed = reversed * 10 + ostatoc
    }
    
    
    return x == reversed
}
