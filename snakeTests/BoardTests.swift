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
    
    
    
    func testExample() {
        
/*
 
 6 . . . . . . . .
 5 . . . . . . . .
 4 . . . . . . . .
 3 . . . . . . . .
 2 . . . . . . . .
 1 . . . . . . . .
 + A B C D E F G H
         
 */
        
//        let board = Board(description: <#String#>, numRows: 6, numCols: 8)
        
        let board = Board(numRows: 6, numCols: 8)
        
        print("\(board)")
        
    }
    
}
