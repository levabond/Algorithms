//
//  Map.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 13.12.2021.
//

import Foundation

func map<T>(array: [T], event: (T) -> T) -> [T] {
    var result: [T] = []
    for item in array {
        result.append(event(item))
    }
    
    return result
}

extension Array {
    func myCompactMap<Transform>(transform: (Element) -> Transform?) -> [Transform] {
        var result = [Transform]()
        for item in self {
            if let transform = transform(item) {
                result.append(transform)
            }
        }
        
        return result
    }
}
