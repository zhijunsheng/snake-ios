//
//  ArrayTests.swift
//  snakeTests
//
//  Created by Peter Shi on 2018-07-11.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class ArrayTests: XCTestCase {
    
    func testProductOfIntArray() {
        let arr0 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        var prod = 1
        for elem in arr0 {
            prod *= elem
        }
        XCTAssertEqual(362880, prod)
    }
    
    func testHi() {
        
    }
    
    func testAverageOfIntArray() {
        let arr0 = [1, 2, 5, 9]
        // MEEOOOWWWW!!!!!~🐈
        var average = 0
        for elem in arr0 {
            average += elem
        }
        average /= arr0.count
        XCTAssertEqual(4, average)
    }
    
    
    func testArray() {
        let arr0 = [1, 2, 5, 9]
        XCTAssertEqual(4, arr0.count)
        XCTAssertEqual(2, arr0[1])
        XCTAssertEqual(5, arr0[2])
        XCTAssertEqual(9, arr0[3])
        for element in arr0 {
            print(element)
        }
        
        print("==============================================================================")
        
        for (idx, element) in arr0.enumerated() {
            print("idx = \(idx), element = \(element)")
        }
    }
}
