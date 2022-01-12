
import Foundation

func reverse(_ x: Int) -> Int {
    if x < Int32.min || x > Int32.max {
        return 0
    }
    
    var numStr = String(x)
    var result = ""
    
    if x < 0 {
        numStr.removeFirst()
    }
    
    for char in numStr.reversed() {
        result.append(char)
    }
    
    if Int(result)! < Int32.min || Int(result)! > Int32.max {
        return 0
    } else {
        return x < 0 ? -Int(result)! : Int(result)!
    }
}
