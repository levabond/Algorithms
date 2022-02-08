//
//  Valid Parentheses.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 09.01.2022.

// https://leetcode.com/problems/valid-parentheses/submissions/
//

import Foundation

func isValid(_ s: String) -> Bool {
    var stack: [Character] = []
    let mapBrackets: [Character: Character] = ["}": "{", ")": "(", "]": "["]
    let openingBrackets = "{(["
    
    for char in s {
        if openingBrackets.contains(char) {
            stack.append(char)
        } else {
            if stack.isEmpty {
                return false
            } else if let last = stack.last, last == mapBrackets[char] {
                stack.popLast()
            } else {
                return false
            }
        }
        
    }
    
    return stack.isEmpty
}
