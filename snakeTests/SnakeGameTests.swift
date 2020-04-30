//
//  SnakeGameTests.swift
//  snakeTests
//
//  Created by Grace Huang on 4/23/20.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake


class SnakeGameTests: XCTestCase {

    func testMoveUp() {
        var game = SnakeGame()
        
        game.snake.append(SnakeCell(col: 14, row: 11)) // 0
        game.snake.append(SnakeCell(col: 14, row: 12)) // 1
        game.snake.append(SnakeCell(col: 14, row: 13)) // 2
        game.snake.append(SnakeCell(col: 15, row: 13)) // 3
        game.snake.append(SnakeCell(col: 16, row: 13)) // 4
        game.snake.append(SnakeCell(col: 16, row: 12)) // 5



        XCTAssertEqual(14, game.snake[2].col)
        XCTAssertEqual(13, game.snake[2].row)
        
        XCTAssertEqual(15, game.snake[3].col)
        XCTAssertEqual(13, game.snake[3].row)
        
        XCTAssertEqual(14, game.snake[0].col)
        XCTAssertEqual(11, game.snake[0].row)
        
        XCTAssertEqual(16, game.snake[5].col)
        XCTAssertEqual(12, game.snake[5].row)
        
        game.moveUp()

        XCTAssertEqual(14, game.snake[2].col)
        XCTAssertEqual(12, game.snake[2].row)
        
        XCTAssertEqual(14, game.snake[3].col)
        XCTAssertEqual(13, game.snake[3].row)
        
        XCTAssertEqual(14, game.snake[0].col)
        XCTAssertEqual(10, game.snake[0].row)
        
        XCTAssertEqual(16, game.snake[5].col)
        XCTAssertEqual(13, game.snake[5].row)
    }

    func testMoveUp2() {
        var game = SnakeGame()
        
        
        
        
    }
    
    
}
