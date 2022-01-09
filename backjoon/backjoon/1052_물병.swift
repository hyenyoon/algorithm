
import Foundation

func p1052_1() {

    func getBottleToBuy(_ n: Int, _ k: Int) -> Int {
        let nBin = Array(String(n, radix: 2))
        return (nBin.filter { $0 == "1" }.count) <= k
        ? 0
        : getPlaceValue(k, nBin, 0) - getRestNum(k, nBin, 0)

    }

    func getPlaceValue(_ subtractedOne: Int, _ bin: [Character], _ i: Int) -> Int {
        if subtractedOne == 1 && bin[i] == "1" { return Int(pow(2, Double(bin.count - i))) }
        let num = bin[i] == "1" ? 1 : 0
        return getPlaceValue(subtractedOne - num, bin, i + 1)
    }

    func getRestNum(_ subtractedOne: Int, _ bin: [Character], _ i: Int) -> Int {
        if subtractedOne == 1 { return Int(String(bin[i...]), radix: 2) ?? 0 }
        let num = bin[i] == "1" ? 1 : 0
        return getRestNum(subtractedOne - num, bin, i + 1)
    }

    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let bottleToBuy = getBottleToBuy(input[0], input[1])
    print(bottleToBuy)

}

func p1052_2() {
    let powerOf: (Int) -> Int = { Int(pow(2, Double($0))) }
    
    func getBottleToBuy(_ numOfOne: Int, _ i: Int, _ acc: Int) -> Int {
        if numOfOne <= 0 && nBin[i] == "1" { return i == 0 || acc == 0 ? 0 : powerOf(i) - acc }
        return nBin[i] == "1"
        ? getBottleToBuy(numOfOne - 1, i + 1, acc + powerOf(i))
        : getBottleToBuy(numOfOne, i + 1, acc)
    }
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let (n, k) = (input[0], input[1])
    let nBin = Array(String(n, radix: 2).reversed())
    print(getBottleToBuy((nBin.filter { $0 == "1" }.count) - k, 0, 0))
}

func p1052_3() {
    
    func countOne(_ num: Int, _ count: Int) -> Int {
        num == 0 ? count : countOne(num & (num - 1), count + 1)
    }
    
    func needToBuy(_ bottle: Int, _ acc: Int) -> Int {
        if countOne(bottle, 0) <= k { return acc }
        let increment = bottle & -bottle
        return needToBuy(bottle + increment, acc + increment)
    }
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let (n, k) = (input[0], input[1])
    print(needToBuy(n, 0))
    
}
