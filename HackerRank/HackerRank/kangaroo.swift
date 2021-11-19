//
//  kangaroo.swift
//  HackerRank
//
//  Created by Hyenyoon Jung on 2021/11/19.
//

import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    
    return (x1-x2) * (v1-v2) < 0 && (x1-x2) % (v1-v2) == 0 ? "YES" : "NO"
    
}
