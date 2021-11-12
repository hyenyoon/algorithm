//
//  main.swift
//  9858_OX퀴즈
//
//  Created by Hyenyoon Jung on 2021/11/05.
//

import Foundation


struct OXquiz {
    func getLineAndQuiz()->[[Character]] {
        let lines = Int(readLine()!)!
        
        var quizzes = [[Character]]()
        if lines > 0 {
            for _ in 1...lines {
                let quiz = readLine() ?? ""
                quizzes.append(Array(quiz))
            }
        }
        return quizzes
    }
    func scoreQuiz(quizzes: [[Character]])->[Int] {
        var scores = [Int]()
        for quiz in quizzes {
            var score:Int = 0
            var count:Int = 0
            for ox in quiz {
                switch ox {
                case "O":
                    count += 1
                    score += count
                case "X":
                    count = 0
                default:
                    print("Error")
                }
            }
            scores.append(score)
        }
        return scores
    }
    func printScore(scores: [Int]) {
        for score in scores {
                print(score)
        }
    }
}

var myOXquiz = OXquiz()
myOXquiz.printScore(scores: myOXquiz.scoreQuiz(quizzes: myOXquiz.getLineAndQuiz()))
