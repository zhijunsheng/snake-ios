//
//  PointTests.swift
//  snakeTests
//
//  Created by Bowen Lin on 2018-07-15.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class PointTests: XCTestCase {
    
    func testPoints(){
        let pt1 = Point(row: 4, col: 9)
        let pt2 = Point(row: 5, col: 2)
    
        if pt1.row == pt2.row && pt1.col == pt2.col {
            print("yes")
        }
    }
    
    
}
