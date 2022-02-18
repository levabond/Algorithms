//
//  Pow.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 18.02.2022.
//

import Foundation

class Pow {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var x = x, n = n

        if n < 0 {
            x = 1.0 / x
            n = -n
        }

        var res = 1.0

        while n > 0 {
            if n % 2 != 0 {
                res *= x
            }
            x *= x
            n /= 2
        }

        return res
    }
}
