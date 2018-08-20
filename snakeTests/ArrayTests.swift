//
//  ArrayTests.swift
//  snakeTests
//
//  Created by Kevin on 2018-07-13.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class ArrayTests: XCTestCase {
    
    func testIntArray() {
        let arr = [3, 5, 0, 9, 12, 1]
        for x in arr {
            print(x)
        }
        
        for (idx, element) in arr.enumerated() {
            print("idx = \(idx), element = \(element)")
        }
        XCTAssertEqual(9, arr[3])
    }
    
    func testStrArray() {
        let str = "hello kevin"
        let strArr = Array(str)
        print(str)
        print(strArr)
        print(strArr[6])
        XCTAssertEqual("k", strArr[6])
    }
    
}
