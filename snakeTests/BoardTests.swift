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
    
    func testIsOnBoardForSinglePoint() {
        let board = Board(numRows: 6, numCols: 8, snake: [], food: [])
        
        XCTAssertTrue(board.isOnBoard(point: Point(row: 1, col: 1)))
        XCTAssertTrue(board.isOnBoard(point: Point(row: 6, col: 6)))
        XCTAssertFalse(board.isOnBoard(point: Point(row: 0, col: 0)))
    }
    
    func testIsOnBoardForSnake() {
        
        /*
         6 . x . . . . . .
         5 . . . . . . . x
         4 . . . o o . . .
         3 . . . . o o o .
         2 . . x . . . . .
         1 . . . . . . . .
         + A B C D E F G H
         */
        
        let snake = [
            Point(row: 4, col: 4),
            Point(row: 4, col: 5),
            Point(row: 3, col: 5),
            Point(row: 3, col: 6),
            Point(row: 3, col: 7),
            ]
        
        let food = [
            Point(row: 1, col: 1),
            Point(row: 2, col: 3),
            Point(row: 5, col: 8),
        ]
        
        let board = Board(numRows: 6, numCols: 8, snake: snake, food: food)
        
        print("\(board)")
        
        for point in snake {
            XCTAssertTrue(board.isOnBoard(point: point))
        }
    }
}
