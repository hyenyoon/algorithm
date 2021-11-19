//
//  gradingStudents.swift
//  HackerRank
//
//  Created by Hyenyoon Jung on 2021/11/19.
//

import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    
    var result = [Int]()
    
    for grade in grades {
        if grade >= 38 && grade % 5 > 2 {
            result.append(grade + (5 - (grade % 5)))
        } else {
            result.append(grade)
        }
    }
    
    return result
}
