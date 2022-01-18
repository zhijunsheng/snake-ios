//
//  SnakeGameTests.swift
//  snakeTests
//
//  Created by jichengye on 2022/1/4.
//  Copyright © 2022 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class SnakeGameTests: XCTestCase {
    
    func testMoveRight() {
        var snakeBoard = SnakeGame()
        print("\(snakeBoard)")
        snakeBoard.moveRight()
        snakeBoard.moveRight()
        print("\(snakeBoard)")
    }
    
    func testMoveLeft() {
        var snakeBoard = SnakeGame()
        print("\(snakeBoard)")
        snakeBoard.moveLeft()
        print("\(snakeBoard)")
    }
    
    func testPrintingBoard() {
        let snakeBoard: SnakeGame = SnakeGame()
        print(snakeBoard.description)
    }
}
