//
//  SortTests.swift
//  snakeTests
//
//  Created by Peter Shi on 2018-07-26.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class SortTests: XCTestCase {
    
    func testForLoopSort() {
        XCTAssertEqual([47, 67, 68, 78, 95], forLoopBubbleSort(origIntArr: [78, 68, 67, 47, 95]))
        XCTAssertEqual([1001], forLoopBubbleSort(origIntArr: [1001]))
        XCTAssertEqual([], forLoopBubbleSort(origIntArr: []))
        XCTAssertEqual([0, 10], forLoopBubbleSort(origIntArr: [10, 0]))
        XCTAssertEqual([10, 10, 17878], forLoopBubbleSort(origIntArr: [17878, 10, 10]))
    }
    
    func testWhileLoopSort() {
        XCTAssertEqual([21, 32, 34, 35, 56, 57], whileLoopBubbleSort(origIntArr: [35, 32, 57, 21, 34, 56]))
        XCTAssertEqual([1001], whileLoopBubbleSort(origIntArr: [1001]))
        XCTAssertEqual([], whileLoopBubbleSort(origIntArr: []))
        XCTAssertEqual([0, 10], whileLoopBubbleSort(origIntArr: [10, 0]))
        XCTAssertEqual([10, 10, 17878], whileLoopBubbleSort(origIntArr: [17878, 10, 10]))
    }
    
    func forLoopBubbleSort(origIntArr: [Int]) -> [Int] {
        if origIntArr.count < 2 {
            return origIntArr
        }
        
        var intArr = origIntArr
        for i in 0...intArr.count - 2 {
            for j in 1...intArr.count - 1 - i {
                if intArr[j - 1] > intArr[j] {
                    let tmp = intArr[j]
                    intArr[j] = intArr[j - 1]
                    intArr[j - 1] = tmp
                }
            }
        }
        return intArr
    }
    
    func whileLoopBubbleSort(origIntArr: [Int]) -> [Int] {
        var intArr = origIntArr
        var i = 0
        while i <= intArr.count - 2 {
            var j = 1
            while j <= intArr.count - 1 - i {
                if intArr[j - 1] > intArr[j] {
                    let tmp = intArr[j]
                    intArr[j] = intArr[j - 1]
                    intArr[j - 1] = tmp
                }
                j += 1
            }
            i += 1
        }
        return intArr
    }
    
}
