//
//  sumTwo.swift
//  leetcode
//
//  Created by Hyenyoon Jung on 2021/11/26.
//

import Foundation


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count - 1 {
        for j in i + 1..<nums.count {
            if nums[i] + nums[j] == target {
                return [i, j]
            }
        }
    }
    return []
}


func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    let dic = (1..<nums.count).reduce(into: [Int: Int]()) { $0.updateValue($1, forKey: nums[$1]) }
    for i in 0..<nums.count - 1 {
        if let j = dic[target - nums[i]] { return [i, j] }
    }
    return []
}

func twoSum3(_ nums: [Int], _ target: Int) -> [Int] {
    var dic = [Int: Int]()
    for i in 0..<nums.count {
        if let j = dic[target - nums[i]] {
            return [i, j]
        } else {
            dic.updateValue(i, forKey: nums[i])
        }
    }
    return []
}

