

import Foundation

func mockExam(_ answers:[Int]) -> [Int] {
    let methods = [
        [1,2,3,4,5],
        [2,1,2,3,2,4,2,5],
        [3,3,1,1,2,2,4,4,5,5]
    ]
    var scores = Array(repeating: 0, count: 3)
    var result = [Int]()
    
    for (ansI, answer) in answers.enumerated() {
        for (methodI, method) in methods.enumerated() {
            if answer == method[ansI % method.count] { scores[methodI] += 1 }
        }
    }
    
    let max = scores.max()
    for (i, score) in scores.enumerated() {
        if score == max { result.append(i + 1)}
    }
    
    return result
}


