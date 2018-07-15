//
//  OverrideTests.swift
//  snakeTests
//
//  Created by Bowen Lin on 2018-07-15.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class OverrideTests: XCTestCase {
    
    func testMyBoard(){
        let boardOne = MyBoard()
        let boardTwo = MyChessBoard()
        printBoardName(a: boardOne)
        printBoardName(a: boardTwo)
    }
    
    func printBoardName(a: MyBoard) {
        print(a.nameOfMyBoard())
    }
}

class MyBoard {
    
    var rows = 3
    var cols = 3
    
    func nameOfMyBoard() -> String {
        return "My Board has \(rows) rows and \(cols) columns."
    }
}

class MyChessBoard: MyBoard {
    
    override func nameOfMyBoard() -> String {
        return "My ChessBoard has \(rows) rows and \(cols) columns."
    }
}
