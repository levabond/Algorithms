//
//  HeightChecker.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 09.02.2022.
//

import Foundation

class HeightChecker {
    func heightChecker(_ heights: [Int]) -> Int {
        let sortedHeights = heights.sorted()
        return heights.enumerated().filter { $1 != sortedHeights[$0] }.count
    }
}
