//
//  BoardTests.swift
//  snakeTests
//
//  Created by Nicole Han on 2018-01-26.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class BoardTests: XCTestCase {
    
    let rows = 36
    let cols = 25
    /*
     8 . . . . . . . . . . . . . .
     7 . . . . . . . . . . . . . .
     6 . . . . . . . . . . . . . .
     5 . . . . . . . . . . . . . .
     4 . . . . . . . . . . U O . .
     3 . . . . . . . . . . . O . .
     2 . . . . . . . . . . . O . .
     1 . . . . . . . . . . . . . .
     ✪ A B C D E F G H J K L M N O
     */
    func testSnakeLeft() {
        
        var board = Board()
        board.snake = [Point(row: 4, col: 11),
                       Point(row: 4, col: 12),
                       Point(row: 3, col: 12),
                       Point(row: 2, col: 12),
        ]
        print(board)
        
        board.moveSnakeLeft()
        print(board)
        
        XCTAssertEqual(10, board.snake[0].col)
        XCTAssertEqual(4, board.snake[0].row)
        XCTAssertEqual(12, board.snake[3].col)
        XCTAssertEqual(3, board.snake[3].row)
    }
    
    func testSnakeRight() {
        var board = Board()
        board.snake = [Point(row: 4, col: 11),
                       Point(row: 4, col: 10),
                       Point(row: 3, col: 10),
                       Point(row: 2, col: 10),
        ]
        print(board)
        
        board.moveSnakeRight()
        print(board)
        
        XCTAssertEqual(12, board.snake[0].col)
    }
    
    func testSnakeUp() {
        var board = Board()
        board.snake = [Point(row: 5, col: 11),
                       Point(row: 4, col: 11),
                       Point(row: 3, col: 11),
                       Point(row: 2, col: 11),
        ]
        print(board)
        
        board.moveSnakeUp()
        print(board)
        
        XCTAssertEqual(6, board.snake[0].row)
    }
    
    func testSnakeDown() {
        var board = Board()
        board.snake = [Point(row: 4, col: 11),
                       Point(row: 5, col: 11),
                       Point(row: 6, col: 11),
                       Point(row: 7, col: 11),
        ]
        print(board)
        
        board.moveSnakeDown()
        print(board)
        
        XCTAssertEqual(3, board.snake[0].row)
    }
    /*
     
     INIT
     
     8 . . . . . . . . . . . . . .
     7 . . . . . . . . . . . . . .
     6 . . . . . . . . . . . . . .
     5 . . . U . . . . . . . . . .
     4 . . . U U . . . . . . . . .
     3 . . . . U . . Q . . . . . .
     2 . . . . U U U U . . . . . .
     1 . . . . . . . . . . . . . .
     ✪ A B C D E F G H J K L M N O
     
     RIGHT
     
     8 . . . . . . . . . . . . . .
     7 . . . . . . . . . . . . . .
     6 . . . . . . . . . . . . . .
     5 . . . . . . . . . . . . . .
     4 . . . U U . . . . . . . . .
     3 . . . . U . . U Q . . . . .
     2 . . . . U U U U . . . . . .
     1 . . . . . . . . . . . . . .
     ✪ A B C D E F G H J K L M N O
     
     UP*2
     
     8 . . . . . . . . . . . . . .
     7 . . . . . . . . . . . . . .
     6 . . . . . . . . . . . . . .
     5 . . . . . . . . . . . . . .
     4 . . . . U . . . Q . . . . .
     3 . . . . U . . U U . . . . .
     2 . . . . U U U U . . . . . .
     1 . . . . . . . . . . . . . .
     ✪ A B C D E F G H J K L M N O
     
     8 . . . . . . . . . . . . . .
     7 . . . . . . . . . . . . . .
     6 . . . . . . . . Q . . . . .
     5 . . . . . . . . U . . . . .
     4 . . . . U . . U U . . . . .
     3 . . . . U U U U . . . . . .
     2 . . . . . . . . . . . . . .
     1 . . . . . . . . . . . . . .
     ✪ A B C D E F G H J K L M N O
     
     LEFT*2
     
     8 . . . . . . . . . . . . . .
     7 . . . . . . . . . . . . . .
     6 . . . . . . . Q U . . . . .
     5 . . . . . . . . U . . . . .
     4 . . . . . . . U U . . . . .
     3 . . . . U U U U . . . . . .
     2 . . . . . . . . . . . . . .
     1 . . . . . . . . . . . . . .
     ✪ A B C D E F G H J K L M N O
     
     8 . . . . . . . . . . . . . .
     7 . . . . . . . . . . . . . .
     6 . . . . . . Q U U . . . . .
     5 . . . . . . . . U . . . . .
     4 . . . . . . . U U . . . . .
     3 . . . . . U U U . . . . . .
     2 . . . . . . . . . . . . . .
     1 . . . . . . . . . . . . . .
     ✪ A B C D E F G H J K L M N O
     
     DOWN
     
     8 . . . . . . . . . . . . . .
     7 . . . . . . . . . . . . . .
     6 . . . . . . U U U . . . . .
     5 . . . . . . Q . U . . . . .
     4 . . . . . . . U U . . . . .
     3 . . . . . . U U . . . . . .
     2 . . . . . . . . . . . . . .
     1 . . . . . . . . . . . . . .
     ✪ A B C D E F G H J K L M N O
     
     */
    func test$NAKEthatDANCE$() {
        var board = Board()
        board.snake = [Point(row: 3, col: 8),
                       Point(row: 2, col: 8),
                       Point(row: 2, col: 7),
                       Point(row: 2, col: 6),
                       Point(row: 2, col: 5),
                       Point(row: 3, col: 5),
                       Point(row: 4, col: 5),
                       Point(row: 4, col: 4),
                       Point(row: 5, col: 4),
        ]
        print(board)
        XCTAssertEqual(3, board.snake[0].row)
        XCTAssertEqual(5, board.snake[8].row)
        board.moveSnakeRight()
        print(board)
        XCTAssertEqual(9, board.snake[0].col)
        XCTAssertEqual(4, board.snake[8].col)
        board.moveSnakeUp()
        print(board)
        XCTAssertEqual(4, board.snake[0].row)
        board.moveSnakeUp()
        print(board)
        XCTAssertEqual(5, board.snake[0].row)
        board.moveSnakeLeft()
        print(board)
        XCTAssertEqual(8, board.snake[0].col)
        board.moveSnakeLeft()
        print(board)
        XCTAssertEqual(7, board.snake[0].col)
        board.moveSnakeDown()
        print(board)
        XCTAssertEqual(4, board.snake[0].row)
        XCTAssertEqual(2, board.snake[8].row)
    }
    
    
    func testBoard() {
        for y in 1...rows {
            if rows - y + 1 >= 10 {
                print("\(rows - y + 1)", terminator:" ")
            } else {
                print(" \(rows - y + 1)", terminator:" ")
            }
            for _ in 1...cols {
                print(".", terminator:" ")
            }
            print(" ", terminator: "\n")
        }
    }
    
    func testCreateBoardDesc() {
        let boardDesc = createBoardDesc()
        print(boardDesc, terminator: "")
    }
    
    func createBoardDesc() -> String {
        let snake = [// Snake 1
            Point(row: 4, col: 18),
            Point(row: 4, col: 17),
            Point(row: 3, col: 17),
            Point(row: 3, col: 16),
            ]
       
        let bottomChars = " ✪ A B C D E F G H J K L M N O P Q R S T U V W X Y Z"
        let bottomCharsArr = Array(bottomChars) // bottomCharsArr = [" ", "✪", " ", "A", ...]
        let subString = bottomCharsArr[0 ... cols * 2 + 1]
        
        var boardString = ""
        for y in 1...rows {
            if rows - y + 1 >= 10 {
                
                boardString += "\(rows - y + 1) "
            } else {
                boardString += " \(rows - y + 1) "
            }
            
            for x in 1...cols {
                if isXY(x: x, y: y, onSnake: snake) {
                    boardString += "O "
                } else {
                    boardString += ". "
                }
            }
            boardString += "\n"
        }
        boardString += subString + "\n"
        return boardString
    }
    
    func isXY(x: Int, y: Int, onSnake snake: [Point]) -> Bool {
        var onSnake = false
        for cell in snake {
            if cell.col == x && cell.row == rows - y + 1 {
                onSnake = true
                break
            }
        }
        return onSnake
    }
    
    func isPoint(point: Point, onSnake snake: [Point]) -> Bool {
        var onSnake = false
        for cell in snake {
            if cell.col == point.col && cell.row == rows - point.row + 1 {
                onSnake = true
                break
            }
        }
        return onSnake
    }
    
    func testRemainder () {
        let remainder = Remainder(a: 63, b: 90, c: 130)
        var a = 2
        while a < 63 {
            let n = remainder.a % a
            let m = remainder.b % a
            let o = remainder.c % a
            
            if n + m + o == 25 {
                print("\(n) \(m) \(o) \(a)")
            }
            a += 1
        }
    }
    
}

struct Remainder {
    let a : Int
    let b : Int
    let c : Int
}
