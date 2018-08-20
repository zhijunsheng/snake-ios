//
//  BoardTests.swift
//  snakeTests
//
//  Created by Kevin on 2018-07-13.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class BoardTests: XCTestCase {
    
    /*
     14 . . . . . . . . .
     13 . . . . . . . . .
     12 . . . . . . . . .
     11 . . . . . . . . .
     10 . . . . . . . . .
     09 . . . . . . . . .
     08 . . . . . . . . .
     07 . . . . . . . . .
     06 . . . . . . . . .
     05 . . . . . . . . .
     04 . . . . . . . . .
     03 . . . . . . . . .
     02 . . . . . . . . .
     01 . . . . . . . . .
     ++ A B C D E F G H I
     */
    func testBoard() {
        print("Hello")
        let COLSNAME = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"]
        let COLS = 8
        let ROWS = 13
        
        for i in 0...ROWS {
            if i > ROWS - 9 {
                print("0\(ROWS + 1 - i) ", terminator: "")
            }
            else {
                print("\(ROWS + 1 - i) ", terminator: "")
            }
            for _ in 0...COLS {
                print(". ", terminator: "")
            }
            print()
        
        }
        print("++ ", terminator: "")
        
        for j in 0...COLS {
            print("\(COLSNAME[j]) ", terminator: "")
        }
        print()
    }
}
