//
//  main.swift
//  2920_음계
//
//  Created by Hyenyoon Jung on 2021/11/05.
//

import Foundation


struct OrderScale {
    func startOrderScale() {
        let pitches = getPitches()
        var isContained:Bool = true
        
        if pitches.count == 8 {
            for pitch in 1...8 {
                if pitches.contains(pitch) == false {
                    isContained = false
                    break
                }
            }
            if isContained == true {
                printScale(order: checkOrder(pitches: pitches))
            }
        }
    }
    
    func getPitches()-> [Int] {
        let input = readLine() ?? ""
        let split = input.split(separator: " ")
        return split.map{ Int($0.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)) ?? 0 }
    }
    func checkOrder(pitches: [Int])->String {
        let ascendedPitches = Array(1...8)
        switch pitches {
        case ascendedPitches:
            return "ascending"
        case ascendedPitches.reversed():
            return "descending"
        default:
            return "mixed"
        }
    }
    func printScale(order: String) {
        print(order)
    }
}

var orderScale = OrderScale()
orderScale.startOrderScale()
