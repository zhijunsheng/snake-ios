//
//  Board.swift
//  snake
//
//  Created by Bowen Lin on 2018-06-19.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import Foundation

struct Board: CustomStringConvertible {
    var description: String {
        return generateBoardDesc(rows: 10, columns: 10)
    }
    
    func generateBoardDesc(rows: Int, columns: Int) -> String {
        var number = -1
        let snake = [Point(row: 3, col: 5), 
                     Point(row: 4, col: 5),
                     Point(row: 4, col: 6),
                     Point(row: 4, col: 7),
//                   Point(row: 4, col: 8)
   ]
        let numberOfDots = " ."
        let letters = " + A B C D E F G H I J K L M N O P Q R W T U V W X Y Z"
        var boardDesc = ""
        var r = rows
        for _ in snake {
            number += 1
        }
        while r > 0 {
            if r < 10 {
                boardDesc += " \(r)"
            } else {
                boardDesc += "\(r)"
            }
            for c in 1...columns {
                if c == columns {
                    boardDesc += numberOfDots + "\n"
                } else if ifInSnakeCells(r: r, c: c, snake: snake, numberOfCells: number) {
                    boardDesc += " 0"
                }
                else {
                    boardDesc += numberOfDots
                }
            }
            r -= 1
        }
        boardDesc += letters.prefix(2 + columns * 2)
        return boardDesc
    }
    
    func ifInSnakeCells(r: Int, c: Int, snake: [Point], numberOfCells: Int) -> Bool {
        for i in 0...numberOfCells {
            if r == snake[i].row && c == snake[i].col {
                return true
            }
        }
        return false
    }
}

