//
//  Reduce.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 13.12.2021.
//

import Foundation

extension Array {
    func myReduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Element) -> Result) -> Result {
        var result = initialResult
        
        for item in self {
            result = nextPartialResult(result, item)
        }
        
        return result
    }
}


//https://www.swiftbysundell.com/basics/map-flatmap-and-compactmap/
