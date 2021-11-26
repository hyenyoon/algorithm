//
//  quickSort.swift
//  playground
//
//  Created by Hyenyoon Jung on 2021/11/20.
//

//input.count/2

import Foundation

var count = 0

//func quickSort(input: [Int]) -> [Int] {
//    var smallArr = [Int]()
//    var bigArr = [Int]()
//    let mid = input[0]
//
//    if input.count < 2 {
////        count += 1
////        print(count,input)
//        return input
//    }
//
//    for num in input {
//        if num < mid {
//            smallArr.append(num)
//            smallArr = quickSort(input: smallArr)
//        }
//
//        if num > mid {
//            bigArr.append(num)
//            bigArr = quickSort(input: bigArr)
//        }
//
//    }
//    count += 1
//    print(count, smallArr, mid, bigArr)
//    return smallArr + [mid] + bigArr
//}

func quickSort(input: [Int]) -> [Int] {

    if input.count < 2 {
//        count += 1
//        print(count, input)
        return input }

    let mid = input[0]

    let smallArr = input.filter { $0 < mid }
    let bigArr = input.filter { $0 > mid }

    count += 1
    print(count, smallArr, [mid], bigArr)
    return quickSort(input: smallArr) + [mid] + quickSort(input: bigArr)
}
