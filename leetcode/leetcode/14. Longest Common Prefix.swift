//
//  14. Longest Common Prefix.swift
//  leetcode
//
//  Created by Hyenyoon Jung on 2021/11/26.
//

import Foundation
/*
 1. 다음 단어와 중복 접두어
 2. 중복 접두어가 없으면 공문자열 리턴
 */

// ver1
func longestCommonPrefix1(_ strs: [String]) -> String {
    if strs.count == 1 {
        return strs[0]
    }
    func findPrefix(_ str1: String, _ str2: String) -> String {
        if str1 == "" || str2 == "" {
            return ""
        }
        
        for i in 1...min(str1.count, str2.count) {
            if str1.prefix(i) != str2.prefix(i) {
                return String(str1.prefix(i-1))
            }
        }
        return String(str1.prefix(min(str1.count, str2.count)))
    }
    
    var result = findPrefix(strs[0], strs[1])
    
    for i in 1..<strs.count {
        let prefix = findPrefix(result, strs[i])
        if prefix == "" {
            return ""
        } else {
            result = prefix
        }
    }
    
    return result
}

// ver2
func longestCommonPrefix(_ strs: [String]) -> String {
    var commonPrefix = strs[0]
    strs.forEach {
        while !$0.hasPrefix(commonPrefix) {
            commonPrefix.removeLast()
        }
    }
    return commonPrefix
}
