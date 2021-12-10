//
//  Node.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 07.12.2021.
//

import Foundation

class Node {
    var value: Int
    var next: Node?
    var previous: Node?
    
    init(value: Int, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}
