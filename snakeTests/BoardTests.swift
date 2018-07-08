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
    
    /*
     
    
     . . . . . .
     . . . . . .
     . o o . . .
     . . o o . .
     . . . . Q .
     . . . . . .
     . . Q . . .
     . . . . . .
     
     6 . . . . . . . .
     5 . . . . . . . x
     4 . . . o o . . .
     3 . . . . . . . .
     2 . . x . . . . .
     1 x . . . . . . .
     
     
     
     . . . . . . Q .
     . . . . . . . .
     . . Q . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . o o c . Q
     . . . o . . . .
     . o o o . . . .
     . . . . . . . .
     . . . . . . . .
     
     
     . . . . . . Q .
     . . . . . . . .
     . . Q . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . o o o C Q
     . . . o . . . .
     . . o o . . . .
     . . . . . . . .
     . . . . . . . .
     
     
     . . . . . . Q .
     . . . . . . . .
     . . Q . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . o o o o o
     . . . o . . . .
     . . . o . . . .
     . . . o . . . .
     . . . . . . . .
     
     . . . . . . Q .
     . . . . . . . .
     . . Q . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . o
     . . . o o o o o
     . . . o . . . .
     . . . o . . . .
     . . . . . . . .
     . . . . . . . .
     
     . . . . . . Q .
     . . . . . . . .
     . . Q . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . o
     . . . . . . . o
     . . . o o o o o
     . . . o . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     
     . . . . . . Q .
     . . . . . . . .
     . . Q . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . o o
     . . . . . . . o
     . . . o o o o o
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     
     . . . . . . Q .
     . . . . . . . .
     . . Q . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . o o o
     . . . . . . . o
     . . . . o o o o
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     
     . . . . . . Q .
     . . . . . . . .
     . . Q . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . o o o o
     . . . . . . . o
     . . . . . o o o
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     
     . . . . . . Q .
     . . . . . . . .
     . . Q . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . o o o o o
     . . . . . . . o
     . . . . . . o o
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     
     . . . . . . Q .
     . . . . . . . .
     . . Q . . . . .
     . . . . . . . .
     . . . . . . . .
     . . o o o o o o
     . . . . . . . o
     . . . . . . . o
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     
     . . . . . . Q .
     . . . . . . . .
     . . Q . . . . .
     . . . . . . . .
     . . u . . . . .
     . . o o o o o o
     . . . . . . . o
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     
     . . . . . . Q .
     . . . . . . . .
     . . Q . . . . .
     . . U . . . . .
     . . o . . . . .
     . . o o o o o o
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     
     . . . . . . Q .
     . . . . . . . .
     . . o . . . . .
     . . o . . . . .
     . . o . . . . .
     . . o o o o o o
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     . . . . . . . .
     
    */
    func testBoard() {
        let rows = 8
        let cols = 6
        
        for y in 1...rows {
            for x in 1...cols {
                print(".", terminator:" ")
            }
            print(" ", terminator: "\n")
        }
    }
    
    
}
