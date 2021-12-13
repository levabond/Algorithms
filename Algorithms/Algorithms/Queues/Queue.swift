//
//  Queue.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 11.12.2021.
//

import Foundation

public protocol Queue {
  associatedtype Element
  mutating func enqueue(_ element: Element) -> Bool
  mutating func dequeue() -> Element?
  var isEmpty: Bool { get }
  var peek: Element? { get }
}


struct QueueArray<T>: Queue {
    private var array: [T] = []
    
    
    var isEmpty: Bool {
        array.isEmpty
    }
    
    var peek: T? {
        array.first
    }
    
    mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        
        return true
    }
    
    mutating func dequeue() -> T? {
        isEmpty ? nil : array.removeFirst()
    }
}
