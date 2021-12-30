//
//  SnakeGameTests.swift
//  snakeTests
//
//  Created by Fergus Chen on 2021-12-23.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class SnakeGameTests: XCTestCase {

    func testPrintBoard() {
        let  game = SnakeGame()
        
        print(game.description)
        
//        for i in 0..<5 {
//            print("_______ \(i)")
//        }
    }

}
