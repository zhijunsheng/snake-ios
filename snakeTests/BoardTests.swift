//
//  BoardTests.swift
//  snakeTests
//
//  Created by Bowen Lin on 2018-06-26.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class BoardTests: XCTestCase {
    
    func testBoard() {
        let board = Board()
        print(board)
    }
    
    /*
     10 . . . . . . . . . .
     9 . . . . . . . . . .
     8 . . . . . . . . . .
     7 . . . . . . . . . .
     6 . . . . . . . . . .
     5 . . . . . . . . . .
     4 . . . . 0 0 . . . .
     3 . . . . 0 . . . . .
     2 . . . . . . . . . .
     1 . . . . . . . . . .
     + A B C D E F G H I J
     */
    func testSnakeOnBoard() {
        
    }
    
    func testMoveSnakeLeft() {
        // there should be a board and a snake on board
        
        let brd = Board()
//        moveSnakeLeft()
        print(brd)
            }
    
    func moveSnakeLeft(){
        
        let brd = Board()

        for _ in brd.snake {
            var t = 0
            var i = 1
            
            if t > 0 {
                brd.snake[brd.snake.count - t] = brd.snake[brd.snake.count - i]
            } else {
                brd.snake[0].row = brd.snake[0].row - 1
                brd.snake[0].col = brd.snake[0].col - 1
            }
            i += 1
            t += 1
        }
    }
}
