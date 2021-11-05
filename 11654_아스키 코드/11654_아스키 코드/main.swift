//
//  main.swift
//  11654_아스키 코드
//
//  Created by Hyenyoon Jung on 2021/11/05.
//

import Foundation


struct FindAsciiCode {
    let number = Array("0123456789")
    let uppercases = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let lowercases = Array("abcdefghijklmnopqrstuvwxyz")
    
    func startToFindCode() {
        let letter = getLetter()
        let letterType = checkLetterType(letter: letter)
        
        if letterType != 3 {
            printCode(code: findCode(letter: letter, letterType: letterType))
        }
    }
    
    func checkLetterType(letter: Character)->Int {
        if number.contains(letter) {
            return 0
        } else if uppercases.contains(letter) {
            return 1
        } else if lowercases.contains(letter) {
            return 2
        } else {
            return 3
        }
    }
    
    func getLetter()->Character {
        let input = Array(readLine()!)
        return input[0]
    }
    
    func findCode(letter: Character, letterType: Int)->Int {
        switch letterType {
        case 0:
            return number.firstIndex(of: letter)! + 48
        case 1:
            return uppercases.firstIndex(of: letter)! + 65
        case 2:
            return lowercases.firstIndex(of: letter)! + 97
        default:
            return 3
        }
    }
    
    func printCode(code: Int) {
        print(code)
    }
}

var findAsciiCode = FindAsciiCode()
findAsciiCode.startToFindCode()
