

import Foundation

func p10757_1() {
    let input = readLine()!.split(separator: " ").map { Array(String($0).reversed()).map { $0.wholeNumberValue! } }
    let maxC = max(input[0].count, input[1].count)
    let a = input[0] + Array(repeating: 0, count: maxC - input[0].count)
    let b = input[1] + Array(repeating: 0, count: maxC - input[1].count)
    let result = (0..<maxC).reduce(into: [0]) { arr, i in
        let summed = arr[i] + a[i] + b[i]
        arr[i] = summed % 10
        arr.append(summed / 10)
    }
    print((result.last == 0 ? result.dropLast() : result).reversed().reduce("") { $0 + String($1) })
}

// timeOver
func p10757_2() {
    let input = readLine()!.split(separator: " ")
    let a = input[0]
    let b = input[1]
    print(sum(a, b, 0, ""))
    
    func sum(_ a: Substring, _ b: Substring, _ carry: Int, _ acc: String) -> String {
        if a == "" && b == "" { return carry == 0 ? acc : "\(carry)" + acc }
        let aLast = a.last?.wholeNumberValue ?? 0
        let bLast = b.last?.wholeNumberValue ?? 0
        let summed = aLast + bLast + carry
        return sum(a.dropLast(), b.dropLast(), summed / 10, "\(summed % 10)" + acc)
    }
}

// tiemOver
func p10757_3() {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let a = input[0]
    let b = input[1]
    print(sum(a, b, 0, ""))
    
    func sum(_ a: String, _ b: String, _ carry: Int, _ acc: String) -> String {
        if a == "" && b == "" { return carry == 0 ? acc : "\(carry)" + acc }
        let aLast = a.last?.wholeNumberValue ?? 0
        let bLast = b.last?.wholeNumberValue ?? 0
        let summed = aLast + bLast + carry
        return sum(String(a.dropLast()), String(b.dropLast()), summed / 10, "\(summed % 10)" + acc)
    }
}

// 64ms
func p10757_4() {
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
}
