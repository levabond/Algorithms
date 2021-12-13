//
//  Stack.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 11.12.2021.
//

import Foundation

struct Stack<Element> {
    private var storage: [Element] = []
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element? {
        storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let topDivider = "---top----\n"
        let bottomDivider = "\n-----------"
        let stackElements = storage
          .map { "\($0)" }
          .reversed()
          .joined(separator: "\n")
        
        return topDivider + stackElements + bottomDivider
    }
}
