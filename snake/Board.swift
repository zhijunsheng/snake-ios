//
//  Board.swift
//  snake
//
//  Created by Sharon Chen on 2018-08-15.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import Foundation

struct Board: CustomStringConvertible {
    
    let snake = [Point(row: 8, col: 1),
                 Point(row: 8, col: 2),
                 Point(row: 7, col: 2),
                 Point(row: 7, col: 3),
                 Point(row: 7, col: 4)
    ]
    
    let rows = 10
    let cols = 12
    
    func isOnSnake(row: Int, col: Int, snake: [Point]) -> Bool {
        for i in snake.indices {
            if row == snake[i].row, col == snake[i].col {
                return true
            }
        }
        return false
    }
    
    var description: String {
        var desc = ""
        let chars = "+ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let charsArr = Array(chars)
        for row in 0...rows - 1 {
            if row < rows - 9 {
                desc += "\(rows - row)"
            } else {
                desc += " \(rows - row)"
            }
            
            for col in 0...cols - 1 {
                if isOnSnake(row: rows - row, col: col + 1, snake: snake) {
                    desc += " o"
                } else {
                    desc += " ."
                }
            }
            desc += "\n"
        }
        
        for j in 0 ... cols {
            desc += " \(charsArr[j])"
        }
        
        return desc
    }
    
}

