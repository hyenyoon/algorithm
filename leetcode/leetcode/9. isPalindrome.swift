//
//  9. isPalindrome.swift
//  leetcode
//
//  Created by Hyenyoon Jung on 2021/11/26.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    var reversed = ""
    
    for char in String(x).reversed() {
        reversed.append(char)
    }
    
    return String(x) == reversed
}

func isPalindrome2(_ x: Int) -> Bool {
    String(x) == String(String(x).reversed())
}

func isPalindrome3(_ x: Int) -> Bool {
    var xCopy = x
    var reversed = 0
    
    while xCopy != 0 {
        let remainder = xCopy % 10
        xCopy /= 10
        
        reversed *= 10
        reversed += remainder
    }
    
    return x == reversed
}
