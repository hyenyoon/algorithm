//
//  File.swift
//  HackerRank
//
//  Created by Hyenyoon Jung on 2021/11/19.
//

import Foundation

func timeConversion(s: String) -> String {
    var time = String(s.dropLast(1))
    let isAM = time.removeLast() == "A" ? true : false
    let hour = Int(time[..<time.firstIndex(of: ":")!])!
    
    if isAM {
        if hour == 12 {
            time.replaceSubrange(..<time.firstIndex(of: ":")!, with: "00")
        }
    } else {
        time.replaceSubrange(..<time.firstIndex(of: ":")!, with: String(hour + 12))
    }
    return time
}


// time format 사용하여 convert
func timeConversion2(s: String) -> String {
    let inFormatter = DateFormatter()
    inFormatter.dateFormat = "hh:mm:ssa"


    let outFormatter = DateFormatter()
    outFormatter.dateFormat = "HH:mm:ss"

    let date = inFormatter.date(from: s)!
    return outFormatter.string(from: date)
}
