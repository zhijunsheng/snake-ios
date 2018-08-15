//
//  BoardTests.swift
//  snakeTests/Users/sharonchen/Developer/snake-ios/snakeTests/ArrayTests.swift
//
//  Created by Sharon Chen on 2018-07-15.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class BoardTests: XCTestCase {
    
    
    /*
     10 . . . . . . . . . . . .
      9 . . . . . . . . . . . .
      8 o o . . . . . . . . . .
      7 . o o o . . . . . . . .
      6 . . . . . . . . . . . .
      5 . . . . . . . . . . . .
      4 . . . . . . . . . . . .
      3 . . . . . . . . . . . .
      2 . . . . . . . . . . . .
      1 . . . . . . . . . . . .
      + A B C D E F G H I J K L
    */
    func testBoard() {
        let brd = Board()
        print(brd)
    }

}
