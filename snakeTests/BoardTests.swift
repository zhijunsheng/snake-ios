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
     5 . . o o . . . . .
     4 . o o . . . . . .
     3 . . . . . . . . .
     2 . . . . . . . . .
     1 . . . . . . . . .
     + A B C D E F G H I
    */
    func testBoard() {
        print(boardDesc(cols: 11, rows: 7))
    }
    
    func boardDesc(cols: Int, rows: Int) -> String {
        
        let snake = [Point(row: 8, col: 1),
                     Point(row: 8, col: 2),
                     Point(row: 7, col: 2),
                     Point(row: 7, col: 3),
                     Point(row: 7, col: 4)
                     ]
        
        var desc = ""
        let chars = "+ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let charsArr = Array(chars)
        for row in 0...rows {
            if row < rows - 8 {
                desc += "\(rows + 1 - row)"
            } else {
                desc += " \(rows + 1 - row)"
            }
            
            for col in 0...cols {
                if isOnSnake(row: rows + 1 - row, col: col + 1, snake: snake) {
                    desc += " o"
                } else {
                    desc += " ."
                }
                
            }
            desc += "\n"
        }
        
        for j in 0 ... cols + 1 {
            desc += " \(charsArr[j])"
        }
        
        return desc
    }
    
    func isOnSnake(row: Int, col: Int, snake: [Point]) -> Bool {
        for i in snake.indices {
            if row == snake[i].row, col == snake[i].col {
                return true
            }
        }
        return false
    }

struct Point {
    var row : Int
    var col : Int
    }
}
