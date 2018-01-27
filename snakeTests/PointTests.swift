//
//  PointTests.swift
//  snakeTests
//
//  Created by Nicole Han on 2018-01-26.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class PointTests: XCTestCase {
    
    func testExample() {
        print("-_-")
        
        let sum = add(a: 3, b: 5)
        XCTAssertEqual(8, sum)
    }
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    
}
