//
//  FindNumberswithEvenNumberofDigits .swift
//  Algorithms
//
//  Created by Лев Бондаренко on 04.02.2022.
// https://leetcode.com/explore/learn/card/fun-with-arrays/521/introduction/3237/

import Foundation

class FindNumberswithEvenNumberofDigits {
  func findNumbers(_ nums: [Int]) -> Int {
    var total: Int = 0
    for num in nums {
      if "\(num)".count % 2 == 0 {
        total = total + 1
      }
    }
    return total
  }
  func findNumbers2(_ nums: [Int]) -> Int {
    var countOfEven = 0;
    for digit in nums
    {
      print(digit);
      var countofDigit = 0;
      var r = digit;
      while (r != 0) {
        r = r / 10;
        countofDigit = countofDigit + 1;
      }
      if(countofDigit % 2 == 0)
      {
        countOfEven = countOfEven + 1;
      }
    }
    return countOfEven;
  }
}
