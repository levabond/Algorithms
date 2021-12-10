//
//  LinkedList.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 07.12.2021.
//

import Foundation

/**
 1. Find lenght
 2. Search
 */

class LinkedList {
    fileprivate var head: Node?
    private var tail: Node?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var first: Node? {
        head
    }
    
    var last: Node? {
        tail
    }
    
    func getLength() -> Int {
        var count = 0
        
        var current = head
        while current != nil {
            count += 1
            current = current?.next
        }
        
        return count
    }
    
    func search(value: Int) -> Bool {
        var current = head
        
        while current != nil {
            if current?.value == value {
                return true
            }
            current = current?.next
        }
        
        return false
    }
    
    public func append(value: Int) {
        // 1
        let newNode = Node(value: value)
        // 2
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        }
        // 3
        else {
            head = newNode
        }
        // 4
        print(value)
        tail = newNode
    }
}
