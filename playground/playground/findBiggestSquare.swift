//
//  findBiggestSquare.swift
//  playground
//
//  Created by Hyenyoon Jung on 2021/11/20.
//

import Foundation

func findBiggestSquare(_ width:Int, _ height:Int) -> Int {
    let max = max(width, height)
    let min = min(width, height)
    
    if max % min == 0 {
        return min
    }
    return findBiggestSquare(min, max % min)
}
