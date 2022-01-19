

import Foundation


func kthNumber(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    for command in commands {
        let arr = array[(command[0]-1)..<command[1]].sorted()
        result.append(arr[command[2]-1])
    }
    return result
}


func kthNumber2(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    commands.map { array[$0[0]-1..<$0[1]].sorted()[$0[2]-1] }
}
