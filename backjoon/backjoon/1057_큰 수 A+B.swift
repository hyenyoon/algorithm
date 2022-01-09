

import Foundation

func p1057_1() {
    let input = readLine()!.split(separator: " ").map { Array($0.reversed()).map { String($0) } }
    let max = max(input[0].count, input[1].count)
    let a = input[0] + Array(repeating: "0", count: max - input[0].count)
    let b = input[1] + Array(repeating: "0", count: max - input[1].count)
    let result = (0..<max).reduce(into: [0]) { arr, i in
        let summed = arr[i] + Int(a[i])! + Int(b[i])!
        arr[i] = summed % 10
        arr.append(summed / 10)
    }
    (result.last == 0 ? result.dropLast() : result).reversed().forEach { print($0, terminator: "") }
}
