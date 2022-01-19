

import Foundation

func makeWeirdString1(_ s:String) -> String {
    var words = Array(s).map { String($0) }
    var j = 0
    
    for (i, char) in words.enumerated() {
        guard char != " " else { j = 0; continue }
        words[i] = j % 2 == 0 ? char.uppercased() : char.lowercased()
        j += 1
    }
    
    return words.reduce("") { $0 + $1 }
}

func makeWeirdString2(_ s:String) -> String {
    s.components(separatedBy: " ")
        .map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() }.joined() }
        .joined(separator: " ")
}
