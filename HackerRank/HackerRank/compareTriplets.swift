//
//  compareTriplets.swift
//  HackerRank
//
//  Created by Hyenyoon Jung on 2021/11/19.
//

import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    // Write your code here
    var result = [0, 0]
    for i in 0..<a.count {
        if a[i] > b[i] {
            result[0] += 1
        } else if a[i] < b[i] {
            result[1] += 1
        }
    }
    return result
}

