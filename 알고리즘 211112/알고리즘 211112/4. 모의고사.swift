//
//  4. 모의고사.swift
//  알고리즘 211112
//
//  Created by Hyenyoon Jung on 2021/11/14.
//

import Foundation

// 처음 작성 코드
func solution4_1(_ answers:[Int]) -> [Int] {
    let a = [1,2,3,4,5]
    let b = [2,1,2,3,2,4,2,5]
    let c = [3,3,1,1,2,2,4,4,5,5]
    
    var score = [(1,0), (2,0), (3,0)]
    var result = [Int]()
    
    for (index, answer) in answers.enumerated() {
        if answer == a[index % 5] { score[0].1 += 1 }
        if answer == b[index % 8] { score[1].1 += 1 }
        if answer == c[index % 10] { score[2].1 += 1 }
    }
    
    score = score.sorted{ $0.1 > $1.1 }
    
    for (key, value) in score {
        if value != 0 { result.append(key) }
    }
    
    print(score)
    
    return result
}

// 해결 코드 - 1등만 return
func solution4_2(_ answers:[Int]) -> [Int] {
    let patterns = [[1,2,3,4,5],[2,1,2,3,2,4,2,5],[3,3,1,1,2,2,4,4,5,5]]
    var scores = [0,0,0]
    var ranking = [Int]()
    
    for (AI, answer) in answers.enumerated() {
        for (PI, pattern) in patterns.enumerated() {
            if answer == pattern[AI % pattern.count] { scores[PI] += 1 }
        }
    }
    
    for (i, score) in scores.enumerated() {
        if score == scores.max() { ranking.append(i+1) }
    }
    
    return ranking
}

