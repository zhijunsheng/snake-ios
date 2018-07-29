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
        print(boardDesc(cols: 11, rows: 11))
    }
    
    func boardDesc(cols: Int, rows: Int) -> String {
        var desc = ""
        let chars = "+ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let charsArr = Array(chars)
        
        for n in 0...rows {
            if n < 3 {
                desc += "\(rows + 1 - n)"
            } else {
                desc += " \(rows + 1 - n)"
            }
            
            for _ in 0...cols {
                desc += " ."
            }
            desc += "\n"
        }
        
        for j in 0 ... cols + 1 {
            desc += " \(charsArr[j])"
        }
        
        return desc
    }
}

