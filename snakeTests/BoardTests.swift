//
//  BoardTests.swift
//  snakeTests
//
//  Created by Janna Xing on 2018-07-21.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class BoardTests: XCTestCase {
    
    func testBoard() {
        let cols = 10
        let rows = 4

        for i in 1...rows {
            print("\(i)", terminator: " ")
            for i in 1...cols {
                print(".", terminator: " ")
            }
            print()
        }
    }
}
