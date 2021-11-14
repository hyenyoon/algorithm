//
//  6. 약수의 합.swift
//  알고리즘 211112
//
//  Created by Hyenyoon Jung on 2021/11/15.
//

import Foundation



// 처음 작성한 코드
func solution6_1(_ n:Int) -> Int {
    var measures = [Int]()
    var sum = 0
    
    if n > 1 {
        for measure in 1...n/2 {
            if n % measure == 0 {
                if !measures.contains(measure) { measures.append(measure) }
                if !measures.contains(n/measure) { measures.append(n/measure) }
            }
        }
        
        for measure in measures {
            sum += measure
        }
        
        return sum
        
    } else {
        return n
    }
}

// 보완한 코드
func solution6_2(_ n:Int) -> Int {
    return n != 0 ? (1...n).filter{ n % $0 == 0 }.reduce(0, +) : 0
}
