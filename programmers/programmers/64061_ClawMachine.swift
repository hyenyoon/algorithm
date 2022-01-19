

import Foundation


func clawMachine(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var rowIndexArr = Array(repeating: 0, count: board.count)
    var movesIndex = 0
    var bracket = [Int]()
    var explodedDoll = 0
    
    while movesIndex < moves.count {
        let moves = moves[movesIndex] - 1
        var i = rowIndexArr[moves]
        
        while i < board.count && board[i][moves] == 0 { i += 1 }
        
        guard i < board.count else {
            rowIndexArr[moves] = i
            movesIndex += 1
            continue
        }
        
        let pickedDoll = board[i][moves]
        
        if pickedDoll == bracket.last ?? 0 {
            bracket.removeLast()
            explodedDoll += 2
        } else {
            bracket.append(pickedDoll)
        }
        
        movesIndex += 1
        rowIndexArr[moves] = i + 1
    }
    print(bracket)
    return explodedDoll
}
