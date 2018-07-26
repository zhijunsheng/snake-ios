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
    
    let rows = 36
    let cols = 25
    
    func testBoard() {
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
        let snake = [// Snake 1
                     Point(x: 4, y: 18),
                     Point(x: 4, y: 17),
                     Point(x: 3, y: 17),
                     Point(x: 3, y: 16),
                     Point(x: 3, y: 15),
                     Point(x: 3, y: 14),
                     Point(x: 3, y: 13),
                     Point(x: 3, y: 12),
                     Point(x: 3, y: 11),
                     Point(x: 3, y: 10),
                     Point(x: 3, y: 9),
                     Point(x: 3, y: 8),
                     Point(x: 3, y: 7),
                     Point(x: 4, y: 7),
                     Point(x: 4, y: 6),
                     Point(x: 4, y: 5),
                     Point(x: 5, y: 5),
                     Point(x: 6, y: 5),
                     Point(x: 6, y: 6),
                     Point(x: 6, y: 7),
                     Point(x: 6, y: 8),
                     Point(x: 6, y: 9),
                     Point(x: 6, y: 10),
                     Point(x: 7, y: 10),
                     Point(x: 8, y: 10),
                     Point(x: 9, y: 10),
                     Point(x: 9, y: 11),
                     Point(x: 9, y: 12),
                     Point(x: 6, y: 13),
                     Point(x: 7, y: 13),
                     Point(x: 8, y: 13),
                     Point(x: 9, y: 13),]
       
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
                if isXY(x: x, y: y, onSnake: snake) {
                    boardString += "O "
                } else {
                    boardString += ". "
                }
            }
            boardString += "\n"
        }
        boardString += subString + "\n"
        return boardString
    }
    
    func isXY(x: Int, y: Int, onSnake snake: [Point]) -> Bool {
        var onSnake = false
        for cell in snake {
            if cell.x == x && cell.y == rows - y + 1 {
                onSnake = true
                break
            }
        }
        return onSnake
    }
    
    func isPoint(point: Point, onSnake snake: [Point]) -> Bool {
        var onSnake = false
        for cell in snake {
            if cell.x == point.x && cell.y == rows - point.y + 1 {
                onSnake = true
                break
            }
        }
        return onSnake
    }
    
    func testRemainder () {
        let remainder = Remainder(a: 63, b: 90, c: 130)
        var a = 2
        while a < 63 {
            let n = remainder.a % a
            let m = remainder.b % a
            let o = remainder.c % a
            
            if n + m + o == 25 {
                print("\(n) \(m) \(o) \(a)")
            }
            a += 1
        }
    }
}

struct Remainder {
    let a : Int
    let b : Int
    let c : Int
}

struct Point {
    let x : Int
    let y : Int
}
