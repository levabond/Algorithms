//
//  Filter.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 13.12.2021.
//

import Foundation

func filter<T>(array: [T], event: (T) -> Bool) -> [T] {
    var result: [T] = []
    
    for item in array {
        if event(item) {
            result.append(item)
        }
    }
    
    return result
}
