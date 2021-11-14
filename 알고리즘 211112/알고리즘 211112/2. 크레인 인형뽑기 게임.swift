//
//  2. 크레인 인형뽑기 게임.swift
//  알고리즘 211112
//
//  Created by Hyenyoon Jung on 2021/11/12.
//

import Foundation

// 처음 작성한 코드
func solution2_1(_ board:[[Int]], _ moves:[Int]) -> Int {
    let numOfCol = board.count
    var colNumArr = Array(repeating: 0, count: numOfCol)
    var colNum = 0
    var pickedDolls = [Int]()
    var deletedDolls = 0
    
    for move in moves {
        if colNumArr[move-1] == numOfCol {
            continue
        } else { colNum = colNumArr[move-1] }
        if board[colNum][move-1] == 0 {
            while board[colNum][move-1] == 0 {
                if colNum+1 == numOfCol {
                    colNumArr[move-1] = colNum+1
                    break
                } else { colNum += 1 }
            }
        }
        if board[colNum][move-1] == pickedDolls.last {
            pickedDolls.removeLast()
            deletedDolls += 2
        } else { pickedDolls.append(board[colNum][move-1]) }
        colNumArr[move-1] = colNum + 1
    }
    return deletedDolls
}

