

import Foundation

let board = [[0, 0, 0, 0, 0], [0, 0, 1, 0, 3], [0, 2, 5, 0, 1], [4, 2, 4, 4, 2], [3, 5, 1, 3, 1]]
let moves = [1, 5, 3, 5, 1, 2, 1, 4]
print(clawMachine(board, moves))

let answers = [1, 2, 3, 4, 5]
print(mockExam(answers))
