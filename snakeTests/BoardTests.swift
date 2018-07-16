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
    
     11
     10
      6 . . . . . . . .
      5 . . . . . . . .
      4 . . . . . . . .
      3 . . . . . . . .
      2 . . . . . . . .
      1 . . . . . . . .

     12 Q . . Q . . . Q
     11 . . . . . . . .
     10 . . . . . . . .
      9 . . o . . . . .
      8 . . o . . . . .
      7 . . o o  . . .
      6 Q . . . . . . Q
      5 . . . . . . . .
      4 . . . . . . . .
      3 . . . . . . . .
      2 . . . . . . . .
      1 Q . . Q . . . Q
      ✪ A B C D E F G H
    */

    func testBoard() {
        let rows = 12
        let cols = 8
        
        for y in 1...rows {
            if rows - y + 1 >= 10 {
                print("\(rows - y + 1)", terminator:" ")
            } else {
                print(" \(rows - y + 1)", terminator:" ")
            }
            for _ in 1...cols {
                print(".", terminator:" ")
            }
            print(" ", terminator: "\n")
        }
    }
    /*
     12 Q . . Q . . . Q
     11 . . . . . . . .
     10 . . . . . . . .
      9 . . o . . . . .
      8 . . o . . . . .
      7 . . o o . . . .
      6 Q . . . . . . Q
      5 . . . . . . . .
      4 . . . . . . . .
      3 . . . . . . . .
      2 . . . . . . . .
      1 Q . . Q . . . Q
      ✪ A B C D E F G H

     */
    func testCreateBoardDesc() {
        let boardDesc = createBoardDesc()
        print(boardDesc, terminator: "")
    }
    
    func createBoardDesc() -> String {
        let p0 = Point(x: 8, y: 12)
//        let p1 = Point(x: 3, y: 8)
//        let p2 = Point(x: 3, y: 7)
//        let p3 = Point(x: 4, y: 7)
        
        let rows = 12
        let cols = 8
        let bottomChars = " ✪ A B C D E F G H J K L M N O P Q R S T U V W X Y Z"
        let bottomCharsArr = Array(bottomChars) // bottomCharsArr = [" ", "✪", " ", "A", ...]
        let subString = bottomCharsArr[0 ... cols * 2 + 1]
        
        var boardString = ""
        for y in 1...rows {
            if rows - y + 1 >= 10 {

                boardString += "\(rows - y + 1) "
            } else {
                boardString += " \(rows - y + 1) "
            }
            
            for x in 1...cols {
                if p0.x == x && p0.y == rows - y + 1{
                    boardString += "✪ "
                } else {
                    boardString += ". "
                }
                
//                if p1.x == x && p1.y == rows - y + 1 {
//                    boardString += "✪ "
//                } else {
//                    boardString += ". "
//                }
//
//                if p2.x == x && p2.y == rows - y + 1 {
//                    boardString += "✪ "
//                } else {
//                    boardString += ". "
//                }
//
//                if p3.x == x && p3.y == rows - y + 1 {
//                    boardString += "✪ "
//                } else {
//                    boardString += ". "
//                }
            }
            boardString += "\n"
        }
        boardString += subString + "\n"
        return boardString
    }
}

struct Point {
    let x : Int
    let y : Int
}
