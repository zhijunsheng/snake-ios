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
    func testPrintingBoard() {
        let snakeBoard: SnakeGame = SnakeGame()
        print(snakeBoard.description)
    }
}
