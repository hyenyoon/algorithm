//
//  3. 두 개 뽑아서 더하기.swift
//  알고리즘 211112
//
//  Created by Hyenyoon Jung on 2021/11/14.
//

import Foundation

// 처음 작성한 코드
func solution3_1(_ numbers:[Int]) -> [Int] {
    var result = [Int]()
    for (index1, number1) in numbers.enumerated() {
        if index1 != numbers.count-1 {
            for index2 in index1+1...numbers.count-1 {
                if !result.contains(number1+numbers[index2]) {
                    result.append(number1+numbers[index2])
                }
            }
        }
        
    }
    return result.sorted()
}

// 개선한 코드
func solution3_2(_ numbers:[Int]) -> [Int] {
    var result = [Int]()
    for i in 0..<numbers.count-1 {
        for j in i+1..<numbers.count {
            if !result.contains(numbers[i]+numbers[j]) {
                result.append(numbers[i]+numbers[j])
            }
        }
    }
    return result.sorted()
}
