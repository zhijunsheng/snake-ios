//
//  SampleTests.swift
//  snakeTests
//
//  Created by Nicole Han on 2018-01-26.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class SampleTests: XCTestCase {
    
    func testNewBoard(){
        let board = Board()
        print(board)
    }
    
    func testBoard(){
        board(rows: 10, columns: 4)
        
    }
    
    func board(rows: Int, columns: Int) -> String {
        let numberOfDots = " ."
        let letters = " + A B C D E F G H I J K L M N O P Q R W T U V W X Y Z"
        //        print(letters[4])
        
        for i in 1...rows {
            if i < 10 {
            print(" \(i)", terminator: "")
            } else {
                print("\(i)", terminator: "")
            }
            for a in 1...columns {
                if a == columns {
                    print(numberOfDots, terminator: "\n")
                    
                } else {
                    print(numberOfDots, terminator: "")
                }
                
            }
        }
        print(letters.prefix(2 + columns * 2))
        return ""
    }
    
    func testSubString() {
        let abc = "abc"
        
        let abcArray = Array(abc)
        
        print(abcArray[0])
        print(abcArray[1])
        print(abcArray[2])
        print(abc.prefix(2))
    }
    
}
