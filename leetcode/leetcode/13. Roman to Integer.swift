//
//  13. Roman to Integer.swift
//  leetcode
//
//  Created by Hyenyoon Jung on 2021/11/26.
//

import Foundation

/*
 1. symbol value swith
 2. i인데 v나 x
 */


func romanToInt(_ s: String) -> Int {
    let dic: [Character : Int] = [
        "I" : 1
        ,"V" : 5
        ,"X" : 10
        ,"L" : 50
        ,"C" : 100
        ,"D" : 500
        ,"M" : 1000
    ]
    let subDic: [Character : [Character]] = [
        "I" : ["V", "X"]
        ,"X" : ["L", "C"]
        ,"C" : ["D", "M"]
    ]
    let arr = Array(s)
    var result = 0
    
    for (i, v) in arr.enumerated() {
        if i != arr.count - 1 {
            if subDic[v] != nil && subDic[v]!.contains(arr[i+1]) {
                result -= dic[v]!
            } else {
                result += dic[v]!
            }
        } else {
            result += dic[v]!
        }
    }
    
    return result
}
