//
//  GameEngineTests.swift
//  snakeTests
//
//  Created by Lambert Lin on 2021/12/18.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class GameEngineTests: XCTestCase {

    func testPrintingBoard() {
        let game = GameEngine()
        print(game.description)
    }

}
