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
    
    func testSnakeOnBoard() {
        
    }
    
    
    /*
     9 . . . . . . . . . .
     8 . . . . . . . . . .
     7 . . . . . . . . . .
     6 . . . . . . . . . .
     5 . . . . . . . . . .
     4 . . . . 0 0 0 . . .
     3 . . . 0 0 . . . . .
     2 . . . . . . . . . .
     1 . . . . . . . . . .
     + A B C D E F G H I J
     
     =>
     
     9 . . . . . . . . . .
     8 . . . . . . . . . .
     7 . . . . . . . . . .
     6 . . . . . . . . . .
     5 . . . . . . . . . .
     4 . . . . 0 0 . . . .
     3 . . 0 0 0 . . . . .
     2 . . . . . . . . . .
     1 . . . . . . . . . .
     + A B C D E F G H I J
     
     */
    func testMoveSnakeDown() {
        let board = Board()
        moveSnakeDown(brd: board)
    
    }
    
    func testMoveSnakeRight() {
        let board = Board()
        moveSnakeRight(brd: board)
     
    }
    
    /*
    9 . . . . . . . . . .
    8 . . . . . . . . . .
    7 . . . . . . . . . .
    6 . . . . . . . . . .
    5 . 0 . . . . . . . .
    4 . 0 . . . . . . . .
    3 . 0 0 0 . . . . . .
    2 . . . . . . . . . .
    1 . . . . . . . . . .
    + A B C D E F G H I J
     
     =>
     
     9 . . . . . . . . . .
     8 . . . . . . . . . .
     7 . . . . . . . . . .
     6 . . . . . . . . . .
     5 . . . . . . . . . .
     4 . 0 . 0 . . . . . .
     3 . 0 0 0 . . . . . .
     2 . . . . . . . . . .
     1 . . . . . . . . . .
     + A B C D E F G H I J
     
     */
    func testMoveSnakeUp() {
        
        var board = Board()
        board.snake = [
            Point(row: 3, col: 4),
            Point(row: 3, col: 3),
            Point(row: 3, col: 2),
            Point(row: 4, col: 2),
            Point(row: 5, col: 2),
        ]
        XCTAssertEqual(board.snake[0], Point(row: 3, col: 4))
        XCTAssertEqual(board.snake[board.snake.count - 1], Point(row: 5, col: 2))
    
        board.moveSnakeUp()
        
        XCTAssertEqual(board.snake[0], Point(row: 4, col: 4))
        XCTAssertEqual(board.snake[board.snake.count - 1], Point(row: 4, col: 2))
    }
    
    func testMoveSnakeLeft() {
        let board = Board()
        moveSnakeLeft(brd: board)
    }

    func moveSnakeRight(brd: Board) {
        var board = brd
        board.snake = [
            Point(row: 3, col: 4),
            Point(row: 3, col: 3),
            Point(row: 3, col: 2),
            Point(row: 4, col: 2),
            Point(row: 5, col: 2),
        ]
        print(board)
        var t = 0
        var i = 1
        
        while t < board.snake.count - 1{
            board.snake[board.snake.count - 1 - t] = board.snake[board.snake.count - 1 - i]
            print("got here")
            i += 1
            t += 1
        }
        board.snake[0].col += 1
        print(board)
    }

    func moveSnakeDown(brd: Board) {
        var board = brd
        board.snake = [
            Point(row: 3, col: 4),
            Point(row: 3, col: 3),
            Point(row: 3, col: 2),
            Point(row: 4, col: 2),
            Point(row: 5, col: 2),
        ]
        print(board)
        var t = 0
        var i = 1
        
        while t < board.snake.count - 1{
            board.snake[board.snake.count - 1 - t] = board.snake[board.snake.count - 1 - i]
            print("got here")
            i += 1
            t += 1
        }
        board.snake[0].row -= 1
        print(board)
    }

    func moveSnakeLeft(brd: Board){
        var board = brd
        board.snake = [
            Point(row: 3, col: 4),
            Point(row: 3, col: 5),
            Point(row: 4, col: 5),
            Point(row: 4, col: 6),
            Point(row: 4, col: 7),
        ]
        print(board)
        var t = 0
        var i = 1
        
        while t < board.snake.count - 1{
                board.snake[board.snake.count - 1 - t] = board.snake[board.snake.count - 1 - i]
                print("got here")
            i += 1
            t += 1
        }
        board.snake[0].col -= 1
        print(board)
    }
}
