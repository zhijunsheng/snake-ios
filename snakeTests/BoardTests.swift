//
//  BoardTests.swift
//  snakeTests
//
//  Created by Kevin on 2018-07-13.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class BoardTests: XCTestCase {
    
    /*
     10 . . . . .
     09 . . . . .
     08 . . . . .
     07 . . . . .
     06 . . . . .
     05 . . . . .
     04 . . . . .
     03 . . . . .
     02 . . . . .
     01 . . . . .
     ++ A B C D E
    */
    func testBoard() {
        let brd = Board(rows: 11, cols: 5)
        print(brd)
    }
    
    
}
