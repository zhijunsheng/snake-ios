//
//  BoardTests.swift
//  snakeTests/Users/sharonchen/Developer/snake-ios/snakeTests/ArrayTests.swift
//
//  Created by Sharon Chen on 2018-07-15.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class BoardTests: XCTestCase {
    
    
    /*
    10 . . . . . . . . .
     9 . . . . . . . . .
     8 . . . . . . . . .
     7 . . . . . . . . .
     6 . . . . . . . . .
     5 . . . . . . . . .
     4 . . . . . . . . .
     3 . . . . . . . . .
     2 . . . . . . . . .
     1 . . . . . . . . .
     + A B C D E F G H I
    */
    func testBoard() {
        let cols = 11
        let rows = 11
        
        let chars = "+ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let charsArr = Array(chars)
        
        for n in 0...rows {
            print("\(rows + 1 - n) ", terminator: "")
            for i in 0...cols {
                print(". ", terminator: "")
            }
            print("")
        }
        
        var bottomLine = ""
        
        for j in 0 ... cols + 1 {
            print(charsArr[j], terminator: " ")
        }
        print("")
        
    }


}

homework: align graph
