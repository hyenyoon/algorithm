//
//  test.swift
//  test
//
//  Created by Hyenyoon Jung on 2022/01/09.
//

import XCTest

class test: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
            let input = readLine()!.split(separator: " ").map { Array(String($0).reversed()).map { $0.wholeNumberValue! } }
            let maxC = max(input[0].count, input[1].count)
            let a = input[0] + Array(repeating: 0, count: maxC - input[0].count)
            let b = input[1] + Array(repeating: 0, count: maxC - input[1].count)
            let result = (0..<maxC).reduce(into: [0]) { arr, i in
                let summed = arr[i] + a[i] + b[i]
                arr[i] = summed % 10
                arr.append(summed / 10)
            }
            print((result.last == 0 ? result.dropLast() : result).reversed().reduce("") { $0 + String($1) })
        }
    }

}
