
import Foundation

//p1057_4()

let input = readLine()!.split(separator: " ").map { Array(String($0).reversed()).map { $0.wholeNumberValue! } }
let maxC = max(input[0].count, input[1].count)
let a = input[0] + Array(repeating: 0, count: maxC - input[0].count)
let b = input[1] + Array(repeating: 0, count: maxC - input[1].count)
print(sum(0, 0, ""))

func sum(_ i: Int, _ carry: Int, _ acc: String) -> String {
    if i >= maxC { return carry == 0 ? acc : "1" + acc }
    let summed = a[i] + b[i] + carry
    return sum(i + 1, summed / 10, "\(summed % 10)" + acc)
}
