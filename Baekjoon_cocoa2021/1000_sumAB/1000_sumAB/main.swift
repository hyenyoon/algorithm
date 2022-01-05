//
//  main.swift
//  algorithm_211105
//
//  Created by Hyenyoon Jung on 2021/11/05.
//

import Foundation

struct SumAB {
    func startSum() {
        let numbers = getAB()
        if numbers.count == 2 && numbers[0] > 0 && numbers[1] < 10 {
            printsumedAB(sumedAB: sumAB(numbers: numbers))
        }
    }
    func getAB() -> [Int] {
        let input = readLine() ?? ""
        let split = input.split(separator: " ")
        return split.map{ Int($0.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)) ?? 0 }
    }
    func sumAB(numbers: [Int]) -> Int {
        return numbers[0] + numbers[1]
    }
    func printsumedAB(sumedAB: Int) {
        print(sumedAB)
    }
}
var sumAB = SumAB()
sumAB.startSum()

