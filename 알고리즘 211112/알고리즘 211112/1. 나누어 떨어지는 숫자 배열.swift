//
//  1. 나누어 떨어지는 숫자 배열.swift
//  알고리즘 211112
//
//  Created by Hyenyoon Jung on 2021/11/12.
//

import Foundation


// 처음 작성한 코드
func solution1(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = [Int]()
    for dividend in arr {
        if dividend % divisor == 0 {
        result.append(dividend)
        }
    }
    return result.count == 0 ? [-1] : result.sorted()
}


// 답안 확인 후 개선한 코드
func solution2(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter{ $0 % divisor == 0 }.sorted()
    return arr.isEmpty ? [-1] : result
}
