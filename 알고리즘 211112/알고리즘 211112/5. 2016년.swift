//
//  5. 2016년.swift
//  알고리즘 211112
//
//  Created by Hyenyoon Jung on 2021/11/15.
//

import Foundation

// 처음 작성한 코드
func solution5_1(_ a:Int, _ b:Int) -> String {
    let daysofMonth = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let daysOfWeek = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    var days = 0
    
    for month in 0..<a-1 {
        days += daysofMonth[month]
    }
    
    return daysOfWeek[(b - 1 + days) % 7]
}

// 다른 사람의 풀이 확인 후 보완한 코드

func solution5_2(_ a:Int, _ b:Int) -> String {
    let daysofMonth = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let daysOfWeek = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"] // THU를 앞으로 두어 b-1 -> b
    let days = daysofMonth[0..<a-1].reduce(0, +) + b
    
    return daysOfWeek[days % 7]
}
