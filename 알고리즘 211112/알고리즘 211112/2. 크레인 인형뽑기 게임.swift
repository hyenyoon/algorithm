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
    var colNum = Array(repeating: 0, count: numOfCol)
    var pickedDolls = [Int]()
    var deletedDolls = 0
    
    for move in moves {
        if colNum[move-1] == numOfCol {
            continue
        }
        if board[colNum[move-1]][move-1] == 0 {
            while board[colNum[move-1]][move-1] == 0 {
                colNum[move-1] += 1
                if colNum[move-1] == numOfCol {
                    break
                }
            }
        }
        if board[colNum[move-1]][move-1] == pickedDolls.last {
            pickedDolls.removeLast(1)
            deletedDolls += 2
        } else {
            pickedDolls.append(board[colNum[move-1]][move-1])
        }
        colNum[move-1] += 1
    }
    return deletedDolls
}

