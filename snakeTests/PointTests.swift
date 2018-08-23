//
//  PointTests.swift
//  snakeTests
//
//  Created by Kevin on 2018-08-23.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class PointTests: XCTestCase {
    func testPoint() {
        let p = Point(row: 1, col: 1)
        XCTAssertEqual(1, p.row)
        XCTAssertEqual(1, p.col)
    }
    
    
}
