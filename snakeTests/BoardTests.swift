//
//  BoardTests.swift
//  snakeTests/Users/sharonchen/Developer/snake-ios/snakeTests/ArrayTests.swift
//
//  Created by Sharon Chen on 2018-07-15.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class BoardTests: XCTestCase {
    
    
    /*
     10 . . . . . . . . . . . .
      9 . . . . . . . . . . . .
      8 o o . . . . . . . . . .
      7 . o o o . . . . . . . .
      6 . . . . . . . . . . . .
      5 . . . . . . . . . . . .
      4 . . . . . . . . . . . .
      3 . . . . . . . . . . . .
      2 . . . . . . . . . . . .
      1 . . . . . . . . . . . .
      + A B C D E F G H I J K L
    */
    func testBoard() {
        let brd = Board()
        print(brd)
    }
    
    func testMoveSnakeDown() {
        var brd = Board(snake: [])
        brd.snake = [Point(row: 10, col: 1),
                     Point(row: 10, col: 2),
                     Point(row: 9, col: 2),
                     Point(row: 9, col: 3),
                     Point(row: 9, col: 4)]

        brd.moveDown()
        XCTAssertEqual(brd.snake[0].row, 9)
        XCTAssertEqual(brd.snake[4].col, 3)
        
    }
    
    func testMoveSnakeLeft() {
        var brd = Board(snake: [])
        brd.snake = [Point(row: 5, col: 6),
                     Point(row: 5, col: 7),
                     Point(row: 4, col: 7),
                     Point(row: 4, col: 8),
                     Point(row: 4, col: 9)]
        
        brd.moveLeft()
        XCTAssertEqual(brd.snake[0].col, 5)
        XCTAssertEqual(brd.snake[4].col, 8)
        
    }

}
