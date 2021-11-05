//
//  main.swift
//  1008_divisionAB
//
//  Created by Hyenyoon Jung on 2021/11/05.
//

import Foundation

struct DivideAB {
    func startDivide() {
        let numbers = getAB()
        if numbers.count == 2 && numbers[0] > 0 && numbers[1] < 10 {
            printDividedAB(sumedAB: divideAB(numbers: numbers))
        }
    }
    func getAB() -> [Double] {
        let input = readLine() ?? ""
        let split = input.split(separator: " ")
        return split.map{ Double($0.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)) ?? 0 }
    }
    func divideAB(numbers: [Double]) -> Double {
        return numbers[0] / numbers[1]
    }
    func printDividedAB(sumedAB: Double) {
        print(sumedAB)
    }
}
var sumAB = DivideAB()
sumAB.startDivide()

