//
//  kangaroo.swift
//  playground
//
//  Created by Hyenyoon Jung on 2021/11/20.
//

import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    if x1 == x2 && v1 == v2 { return "YES" }
    if (x1 - x2) * (v1 - v2) >= 0 { return "NO" }
    
    let front = (max(x1, x2), min(v1, v2))
    let behind = (min(x1, x2), max(v1, v2))
    var count = 1
        
    while behind.0 + behind.1 * count < front.0 + front.1 * count {
        count += 1
    }

    return behind.0 + behind.1 * count == front.0 + front.1 * count ? "YES" : "NO"
}

