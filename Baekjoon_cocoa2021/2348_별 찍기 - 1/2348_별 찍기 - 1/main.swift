//
//  main.swift
//  2348_별 찍기 - 1
//
//  Created by Hyenyoon Jung on 2021/11/05.
//

import Foundation

struct MakeLeftStarTree {
    func startMakeStarTree() {
        let lines:Int = getNumOfLines()
        if lines >= 1 && lines <= 100 {
            printStarTree(starTree: setStarTree(lines: lines))
        }
    }
    func getNumOfLines() -> Int {
        return Int(readLine()!)!
    }
    func setStarTree(lines: Int) -> [[Character]] {
        var resultTree = [[Character]]()
        for line in 1...lines {
            var tempTree = [Character]()
            for _ in 1...line {
                tempTree.append("*")
            }
            resultTree.append(tempTree)
        }
        return resultTree
    }
    func printStarTree(starTree: [[Character]]) {
        for line in starTree {
            for star in line {
                print(star, terminator: "")
            }
            print("")
        }
    }
}

var makeLeftStarTree = MakeLeftStarTree()
makeLeftStarTree.startMakeStarTree()
