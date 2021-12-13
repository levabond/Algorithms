//
//  Heap.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 13.12.2021.
//

import Foundation

struct Heap<Element: Equatable> {
    var elements: [Element] = []
    
    let sort: (Element, Element) -> Bool
    
    init(sort: @escaping (Element, Element) -> Bool) {
        self.sort = sort
    }
    
    var isEmpty: Bool {
        elements.isEmpty
    }
    
    var count: Int {
        elements.count
    }
    
    func peek() -> Element? {
        elements.first
    }
}
