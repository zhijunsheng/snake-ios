//
//  SnakeGameTests.swift
//  snakeTests
//
//  Created by Kenneth Wu on 2021-12-16.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import XCTest

@testable import snake

class SnakeGameTests: XCTestCase {

    func testPrintingBoard() {
        var game = SnakeGame()
        game.moveRight()
        game.moveDown()
        game.moveDown()
        print(game)
        
    }
    
}
