
import Foundation

func pour(_ n: Int, _ count: Int, _ waterToBuy: Int) -> Int {
    if n <= k { return waterToBuy }
    let isOdd = n % 2 == 1
    let necessaryWater = isOdd ? count : 0
    let nextWater = isOdd ? (n + 1) / 2 : n / 2
    print(n, count, waterToBuy)
    return pour(nextWater, count * 2, waterToBuy + necessaryWater)
}

let input = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
let (n, k) = (input[0], input[1])

print(pour(n, 1, 0))

