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
        game.snake.append(SnakeCell(col: 9, row: 10))
        XCTAssertEqual(9, game.snake[0].col)
        XCTAssertEqual(10, game.snake[0].row)
        
        game.moveUp()
        
        XCTAssertEqual(9, game.snake[0].col)
        XCTAssertEqual(9, game.snake[0].row)
    }

}
